class Qcm < ApplicationRecord
  has_many :game_qcms
  has_many :games, through: :game_qcms

  LANGUAGES = ["HTML", "Ruby"]
  LEVEL = ["lvl.1", "lvl.2", "lvl.3"]
end
