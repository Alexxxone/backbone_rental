class AddNameUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :about, :string
  end
end
