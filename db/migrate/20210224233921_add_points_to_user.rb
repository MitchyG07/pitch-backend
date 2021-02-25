class AddPointsToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :total_points, :integer
  end
end
