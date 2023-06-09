class User < ApplicationRecord
  has_many :user_games, dependent: :destroy
  has_many :games, through: :user_games
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def computed_score
    total = 0
    user_games.each do |game|
      total += game.score
    end
    return total
  end

  def highest_level
    games.pluck(:level).map(&:to_i).max()
  end
end
