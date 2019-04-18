class CreateMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :meals do |t|
      t.integer :user_id
      t.datetime  :datetime
      t.string  :category
      t.string  :meal

      t.timestamps
    end
  end
end
