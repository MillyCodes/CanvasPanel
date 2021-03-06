class CreateCohorts < ActiveRecord::Migration[5.2]
  def change
    create_table :cohorts do |t|
      t.string :name
      t.datetime :startdate
      t.datetime :enddate

      t.references :instructor, foreign_key: true
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end
