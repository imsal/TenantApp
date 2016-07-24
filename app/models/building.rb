class Building < ActiveRecord::Base

  attr_accessor :property_attributes
  has_one :property, as: :identifiable
  accepts_nested_attributes_for :property
  has_many :suites

end
