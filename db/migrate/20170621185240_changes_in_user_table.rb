class ChangesInUserTable < ActiveRecord::Migration[5.0]
  def change
  add_column :users, :username, :string
  add_column :users, :city,     :string
  add_column :users, :country,  :string
  add_column :users, :zipcode,  :string
  end
end
