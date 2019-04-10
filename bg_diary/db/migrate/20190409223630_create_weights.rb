class CreateWeights < ActiveRecord::Migration[5.2]
  def change
    create_table :weights do |t|
      t.integer :user_id
      t.datetime :datetime
      t.integer :weight

      t.timestamps
    end
  end
end
