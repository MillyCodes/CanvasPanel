class UpdateStudents < ActiveRecord::Migration[5.2]
  change_table :students do |t|
    t.references :cohort, foreign_key: true
  end
end
