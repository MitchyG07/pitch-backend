class CreateIntervals < ActiveRecord::Migration[6.1]
  def change
    create_table :intervals do |t|
      t.integer :points

      t.timestamps
    end
  end
end
