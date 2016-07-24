class Property < ActiveRecord::Base

  attr_accessor :portfolio_attributes
  has_one :portfolio, as: :identifiable
  accepts_nested_attributes_for :portfolio
  has_many :buildings

end


