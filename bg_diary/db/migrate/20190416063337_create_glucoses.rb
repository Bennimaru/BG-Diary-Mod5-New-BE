class CreateGlucoses < ActiveRecord::Migration[5.2]
  def change
    create_table :glucoses do |t|
      t.integer :user_id
      t.datetime :datetime
      t.integer :glucose

      t.timestamps
    end
  end
end
