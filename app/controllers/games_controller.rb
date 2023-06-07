class GamesController < ApplicationController
  def create
    @game = Game.new
    @user_game = UserGame.new(user: current_user, game: @game)
    if @user_game.save
      redirect_to user_game_path(@user_game)
    else

    end
  end

  def choose_language
    @game = Game.find(params[:game_id])
  end

  def choose_level
    @game = Game.find(params[:game_id])
    @game.update(language: params[:languages])
  end

  def index
  end

  def show
    @game = Game.find(params[:id])
    @user_game = UserGame.find_by(game: @game, user: current_user)
    @qcm = @game.qcms.first
  end

  def destroy
  end
end
