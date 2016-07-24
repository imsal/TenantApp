class CreateSuites < ActiveRecord::Migration
  def change
    create_table :suites do |t|
      t.string :lock_box_location
      t.string :lock_box_combo
      t.integer :sq_ft
      t.boolean :vacant # true if suite is vacant
      t.belongs_to :building, index: true
      t.string :name

      t.timestamps null: false
    end
  end
end
