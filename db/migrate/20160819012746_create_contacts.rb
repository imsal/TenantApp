class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :type # Vendor / Utility / Tenant
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :phone_ext
      t.string :mobile_phone
      t.string :email
      t.string :fax
      t.string :preferred_method_of_contact
      t.string :notes
      t.string :job_title

      t.belongs_to :tenant
      t.belongs_to :vendor

      t.timestamps null: false
    end
  end
end
