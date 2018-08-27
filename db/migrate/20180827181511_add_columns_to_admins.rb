class AddColumnsToAdmins < ActiveRecord::Migration[5.2]
  change_table :adminss do |t|
    add_column :admins, :first_name, :string
    add_column :admins, :last_name, :string
  end
end
