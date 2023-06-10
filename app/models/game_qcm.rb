class GameQcm < ApplicationRecord
  belongs_to :game
  belongs_to :qcm

  after_create :update_game_status

  private

  def update_game_status
    game.update(status: "joignable")
  end
end
