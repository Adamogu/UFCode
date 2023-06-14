class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def leaderboard
    @users = User.all
  end

  def profile
    @games = current_user.games
  end
end
