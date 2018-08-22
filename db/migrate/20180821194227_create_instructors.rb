class CreateInstructors < ActiveRecord::Migration[5.2]
  def change
    create_table :instructors do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.integer :age
      t.integer :salary
      t.string :avatar
      t.string :education
     

      t.timestamps
    end
  end
end
