class CreateGernes < ActiveRecord::Migration[6.0]
  def change
    create_table :genres do |t|
      t.string :name
      t.timestamps
    end
    create_table :work_genres do |t|
      t.integer :work_id
      t.integer :genre_id
      t.timestamps
    end
    remove_column :works, :genre, :string
  end
end
