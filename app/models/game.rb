class Game < ApplicationRecord
  has_many :game_qcms
  has_many :qcms, through: :game_qcms
end
