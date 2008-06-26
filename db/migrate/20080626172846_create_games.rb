class CreateGames < ActiveRecord::Migration
  def self.up
    create_table :games do |t|
      t.integer :minimum_bet
      t.integer :current_seat_id
      t.string :c1, :c2, :c3, :c4, :c5
      t.integer :dealer_id

      t.timestamps
    end
  end

  def self.down
    drop_table :games
  end
end
