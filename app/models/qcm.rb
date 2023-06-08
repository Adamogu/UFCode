class Qcm < ApplicationRecord
  has_many :game_qcms, dependent: :destroy
  has_many :games, through: :game_qcms

  LANGUAGES = ["HTML.png", "Ruby.png", "JavaScript.png"]
  LEVELS = [1, 2, 3]
end
