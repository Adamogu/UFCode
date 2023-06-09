class Game < ApplicationRecord
  has_many :game_qcms, dependent: :destroy
  has_many :qcms, through: :game_qcms
  has_many :user_games, dependent: :destroy
  has_many :users, through: :user_games

  # after_create :assign_qcms

  def lobby
    user_games.count < 2
  end

  # def assign_qcms
  #   Qcm.all.sample(10).each do |qcm|
  #     GameQcm.create(game: self, qcm: qcm)
  #   end
  # end
end
