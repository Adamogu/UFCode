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
    @game.update(language: params[:qcm][:languages])
  end

  def index
    @games = Game.all
  end

  def avatar
    @game = Game.find(params[:id])
    @user_game = UserGame.create(game: @game, user: current_user)
    redirect_to user_game_path(@user_game)
  end


  def show
    @game = Game.find(params[:id])
    @user_game = UserGame.find_by(game: @game, user: current_user)
  end

  def destroy
  end
end
