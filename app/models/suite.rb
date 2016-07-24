class Suite < ActiveRecord::Base

  attr_accessor :building_attributes
  has_one :building, as: :identifiable
  accepts_nested_attributes_for :building
  has_many :tenants
end
