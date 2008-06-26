# Represents the seating of a user at a game

class Seat < ActiveRecord::Base
  belongs_to :user
  belongs_to :game
end
