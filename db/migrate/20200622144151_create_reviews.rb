class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :work_id
      t.integer :user_id
      t.integer :rate
      t.text :comment
      t.timestamps
    end
  end
end
