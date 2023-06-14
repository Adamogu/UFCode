class UserGamesController < ApplicationController
  def create
    @user_game = UserGame.new(user_game_params)
    @user_game.user = current_user
  end

  def update
    @user_game = UserGame.find(params[:id])
    @user_game.update(user_game_params)

    if @user_game.save
      if @user_game.game.user_games.count == 2
        GameChannel.broadcast_to(
          @user_game.game,
          { user_joined: true }.to_json
        )
        redirect_to game_path(@user_game.game)
      else
        redirect_to game_choose_language_path(@user_game.game)
      end
    end
  end

  def show
    @user_game = UserGame.find(params[:id])
  end

  def answer
    @user_game = UserGame.find(params[:user_game_id])
    result = params[:result]

    @user_game.score += 10 * @user_game.game.level.to_i if result == "true"
    # le step nous donne l'index de la question à aller prendre
    @user_game.step += 1
    @user_game.save
    @game = @user_game.game

    GameChannel.broadcast_to(
      @user_game.game,
      { user_answered: render_to_string(partial: "games/progress_bar", locals: {game: @game}, formats: [:html]) }.to_json
    )

    # stocker la question suivante
    @qcm = @user_game.game.qcms[@user_game.step]

    respond_to do |format|
      if @user_game.step >= @user_game.game.qcms.count
        if @game.user_games.all? { |u| u.step >= 5 }
          @game.update(status: "finished")
          determine_loser_and_apply_effect(@game)
          GameChannel.broadcast_to(
            @user_game.game,
            { user_finished: render_to_string(partial: "games/result", locals: {user_game: @user_game, game: @game}, formats: [:html]) }.to_json
          )
        end
        format.json { render json: {
          html: render_to_string(partial: "games/result", locals: {user_game: @user_game, game: @game}, formats: [:html]) }
        }
      else
        format.json { render json: {
          html: render_to_string(partial: "games/question", locals: {qcm: @qcm }, formats: [:html]) }
        }
      end
    end
  end

  private

  def determine_loser_and_apply_effect(game)
    @user_games = game.user_games.sort_by(&:score)
    @loser = @user_games.first.user
    @winner = @user_games.last.user
    @loser.update!(ejected: true)
    @winner.update!(ejected: false)
  end

  def user_game_params
    params.require(:user_game).permit(:avatar)
  end
end
