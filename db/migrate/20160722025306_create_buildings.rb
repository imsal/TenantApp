class CreateBuildings < ActiveRecord::Migration
  def change
    create_table :buildings do |t|

      t.belongs_to :property, index: true
      t.string :name # name of building.. building A, building B ... etc.
      t.string :address # Street number, street name
      t.string :state # e.g. California
      t.string :zip_code # building zip code

      t.timestamps null: false
    end
  end
end
