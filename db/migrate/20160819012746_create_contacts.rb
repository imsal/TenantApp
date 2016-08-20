class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :type # Vendor / Utility / Tenant
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :preferred_method_of_contact
      t.string :notes
      t.string :job_title

      t.integer :phone, :limit => 8
      t.integer :phone_ext, :limit => 8
      t.integer :mobile_phone, :limit => 8
      t.integer :fax, :limit => 8

      t.belongs_to :tenant, index: true
      t.belongs_to :vendor, index: true

      t.timestamps null: false
    end
  end
end
