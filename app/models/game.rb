# Represents a game in progress

class Game < ActiveRecord::Base
  has_many :seats
  has_one :current_seat  # the player who needs to act
  has_many :users, :through => :seats

  def pot
    seats.inject {|sum, n| sum + n }
  end
end
