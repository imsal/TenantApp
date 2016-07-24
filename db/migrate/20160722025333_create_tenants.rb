class CreateTenants < ActiveRecord::Migration
  def change
    create_table :tenants do |t|
      t.belongs_to :suite, index: true
      ## test here
      t.belongs_to


      # end test
      t.string :first_name
      t.string :last_name
      t.string :job_title
      t.string :contact_type # Billing, Admin, Emergency
      t.string :company_name
      t.string :email
      t.string :preferred_method_of_contact
      t.boolean :current # true if tenant has not vacated.
      t.integer :phone_direct, :limit => 8
      t.integer :phone_direct_ext, :limit => 8
      t.integer :phone_mobile, :limit => 8
      t.integer :fax_number, :limit => 8
      t.text :notes

      t.timestamps null: false
    end
  end
end
