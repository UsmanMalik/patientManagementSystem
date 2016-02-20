class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :name
      t.integer :age
      t.string :email
      t.date :date_of_birth
      t.string :sex
      t.text :address
      t.string :phone
      t.boolean :isSms

      t.timestamps null: false
    end
  end
end
