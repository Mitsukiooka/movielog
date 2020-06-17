class AddGerne < ActiveRecord::Migration[6.0]
  def change
    add_column :works, :genre, :string
  end
end
