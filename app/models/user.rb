class User < ApplicationRecord
  has_many :created_games, class_name: 'Game'
  has_many :user_games, dependent: :destroy
  has_many :joined_games, through: :user_games, source: :game
  scope :ranked, -> { sort_by { |user| -user.computed_score } }

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
    joined_games.pluck(:level).map(&:to_i).max()
  end

  def self.ranked
    all.sort_by { |user| -user.computed_score }
  end

  def games
    Game.where(id: (created_games | joined_games).map(&:id))
  end

end
