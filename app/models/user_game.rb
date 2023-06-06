class UserGame < ApplicationRecord
  belongs_to :user
  belongs_to :game

  AVATAR_URL = ["Avatar1.png", "Avatar2.png", "Avatar3.png",
                "Avatar4.png","Avatar5.png","Avatar6.png","Avatar7.png","Avatar8.png"]
end
