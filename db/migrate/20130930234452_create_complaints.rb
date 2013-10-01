class CreateComplaints < ActiveRecord::Migration
  def change
    create_table :complaints do |t|
      t.string :descriptor
      t.string :address
      t.decimal :latitude
      t.decimal :longitude
      t.integer :zip

      t.timestamps
    end
  end
end
