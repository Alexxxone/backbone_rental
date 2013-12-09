class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.string :title
      t.text :description
      t.integer :number_of_people
      t.string :location
      t.string :filename
      t.timestamps
    end
  end
end

