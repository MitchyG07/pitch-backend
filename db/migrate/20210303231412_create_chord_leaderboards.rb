class CreateChordLeaderboards < ActiveRecord::Migration[6.1]
  def change
    create_table :chord_leaderboards do |t|
      t.references :user, null: false, foreign_key: true
      t.references :chord_game, null: false, foreign_key: true

      t.timestamps
    end
  end
end
