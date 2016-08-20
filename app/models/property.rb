class Property < ActiveRecord::Base

=begin
  attr_accessor :portfolio_attributes
  has_one :portfolio, as: :identifiable
  accepts_nested_attributes_for :portfolio
  has_many :buildings


  has_many :vendors

=end

  has_many :buildings
  belongs_to :portfolio



end


