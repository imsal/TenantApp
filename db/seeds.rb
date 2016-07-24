# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


=begin
Portfolio.create(name: "Sal's Portfolio", team:"Sal Tardibuono") # id 1
Portfolio.create(name: "Brit's Portfolio", team:"Brittany Tardibuono") #id 2

Property.create(name:"Yorba Linda", entity:"Yorba Linda Business Park", sq_ft:"10000", tax:"1234", portfolio_id:1) # id 1
Property.create(name:"Orangethorpe", entity:"RIF II Orangethorpe, LLC", sq_ft:"1000", tax:"1214", portfolio_id:1)  # id 2
Property.create(name:"Alton", entity:"Alton LLC", sq_ft:"50000", tax:"1554", portfolio_id:2) # id 3

Building.create(name:"22343", property_id:1) # id 1
Building.create(name:"22345", address: "22343 La Palma Ave.", state:"California", zip_code: "92806", property_id:2) # id 2

Suite.create(name: "Unit 123", sq_ft:1234, lock_box_location:"Front Door Handle", lock_box_combo:"ABCD", building_id:2) #id 1
Suite.create(name: "Unit 125", sq_ft:1234, lock_box_location:"Front Door Handle", lock_box_combo:"ABCD", building_id:2) #id 2

Tenant.create(suite_id: 1, first_name: "Sal", last_name: "Tardibuono", job_title: "Property Administrator", contact_type: "Billing", company_name: "Rexford Industrial Realty LP", email: "saltad347@gmail.com", preferred_method_of_contact: "email", current: true, phone_direct: 6619045259, phone_direct_ext: 123, phone_mobile: 6619045259, fax_number: 6611234567, notes: "really cool guy")
Tenant.create(first_name:"Bob", last_name:"Shmitty", email:"whattheshmitt@ymail.com", suite_id:2) # id 1
=end









# Testing Models
# x = Property.find(1)
# x.properties # lowercase
