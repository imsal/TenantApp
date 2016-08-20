class CreateTenants < ActiveRecord::Migration
  def change
    create_table :tenants do |t|

      t.belongs_to :suite, index: true
      t.string :company_name
      t.string :service_type
      t.string :website
      t.string :billing_address
      t.boolean :current # true if tenant has not vacated.
      t.text :notes

      t.timestamps null: false
    end
  end
end
