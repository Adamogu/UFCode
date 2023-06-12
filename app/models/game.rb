class Game < ApplicationRecord
  has_many :game_qcms, dependent: :destroy
  has_many :qcms, through: :game_qcms
  has_many :user_games, dependent: :destroy
  has_many :users, through: :user_games
  belongs_to :user
  scope :joignable, -> { where(status: 'joignable') }
end

# STATUS :
# created : créée mais pas de qcms associées encore donc pas joignable
# joignable : joignable (des qcms associés)
# started : join par 2 personnes (2 users games associés)
