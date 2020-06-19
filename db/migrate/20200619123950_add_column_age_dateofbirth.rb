class AddColumnAgeDateofbirth < ActiveRecord::Migration[6.0]
  def change
    add_column :profiles, :age, :datetime
    add_column :profiles, :bestfilm, :string
    add_column :profiles, :bestactor, :string
    add_column :profiles, :bestdirector, :string
    add_column :profiles, :instagram, :string
    add_column :profiles, :twitter, :string
  end
end
