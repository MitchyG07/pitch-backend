class CreateExperiences < ActiveRecord::Migration[6.1]
  def change
    create_table :experiences do |t|
      t.references :user
      t.references :interval

      t.timestamps
    end
  end
end
