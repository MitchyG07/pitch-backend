class CreatePerfectGames < ActiveRecord::Migration[6.1]
  def change
    create_table :perfect_games do |t|
      t.integer :points

      t.timestamps
    end
  end
end
