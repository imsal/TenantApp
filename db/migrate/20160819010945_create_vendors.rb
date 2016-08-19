class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.string :company_name
      t.string :service_type
      t.string :website


      t.timestamps null: false
    end
  end
end
