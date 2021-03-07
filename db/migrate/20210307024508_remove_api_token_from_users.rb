class RemoveApiTokenFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :api_token, :string
  end
end
