class Building < ActiveRecord::Base

=begin
  attr_accessor :property_attributes
  has_one :property, as: :identifiable
  accepts_nested_attributes_for :property
  has_many :suites
=end

  has_many :suites
  belongs_to :property
  validates_presence_of :property

end
