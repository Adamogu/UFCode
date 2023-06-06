class Qcm < ApplicationRecord
  has_many :game_qcms
  has_many :games, through: :game_qcms

  LANGUAGES = ["HTML", "Ruby"]
end
