class CreateChordGames < ActiveRecord::Migration[6.1]
  def change
    create_table :chord_games do |t|
      t.integer :points

      t.timestamps
    end
  end
end
