class CreatePerfectLeaderboards < ActiveRecord::Migration[6.1]
  def change
    create_table :perfect_leaderboards do |t|
      t.references :user, null: false, foreign_key: true
      t.references :perfect_game, null: false, foreign_key: true

      t.timestamps
    end
  end
end
