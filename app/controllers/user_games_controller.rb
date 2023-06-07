class UserGamesController < ApplicationController
  def create
    @user_game = UserGame.new(user_game_params)
    @user_game.user = current_user
  end

  def update
    @user_game = UserGame.find(params[:id])
    @user_game.update(user_game_params)

    if @user_game.save
      redirect_to game_choose_language_path(@user_game.game)
    end
  end

  def show
    @user_game = UserGame.find(params[:id])
  end

  private

  def user_game_params
    params.require(:user_game).permit(:avatar)
  end
end
