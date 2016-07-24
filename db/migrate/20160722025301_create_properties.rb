class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|

      t.string :name
      t.string :entity
      t.string :sq_ft
      t.string :tax
      t.belongs_to :portfolio, index: true


      t.timestamps null: false
    end
  end
end
