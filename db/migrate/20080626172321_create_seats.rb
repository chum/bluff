class CreateSeats < ActiveRecord::Migration
  def self.up
    create_table :seats do |t|
      t.integer :user_id
      t.integer :game_id
      t.string :c1, :c2
      t.integer :cash
      t.integer :wager
      t.boolean :folded

      t.timestamps
    end
  end

  def self.down
    drop_table :seats
  end
end
