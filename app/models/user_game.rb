class UserGame < ApplicationRecord
  belongs_to :user
  belongs_to :game

  after_save :update_game_status

  AVATAR_URL = ["Avatar1.png", "Avatar2.png", "Avatar3.png",
                "Avatar4.png","Avatar5.png","Avatar6.png","Avatar7.png",
                "Avatar8.png","Avatar9.png","Avatar10.png","Avatar11.png",
                "Avatar12.png","Avatar13.png","Avatar14.png","Avatar15.png","Avatar16.png"]
                
  private

  def update_game_status
    game.update(status: "started") if game.users.count == 2
  end

  def computed_score
    game_qcms.sum(&:score)
  end
end
