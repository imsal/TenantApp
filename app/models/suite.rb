class Suite < ActiveRecord::Base

=begin
  attr_accessor :building_attributes
  has_one :building, as: :identifiable
  accepts_nested_attributes_for :building
  has_many :tenants
=end

  has_one :tenant
  belongs_to :building
  validates_presence_of :building


end
