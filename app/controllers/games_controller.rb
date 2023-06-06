class GamesController < ApplicationController
  def create
    @game = Game.new
    @user_game = UserGame.new(user: current_user, game: @game)
    if @user_game.save
      redirect_to user_game_path(@game)
    else

    end
  end

  def choose_language
  end

  def choose_level
    raise
    # je stocke en session le language qui est envoyé dans les params
    # ça va ouvrir la vue choose_level.html.erb
  end

  def index
  end

  def show
  end

  def destroy
  end
end
