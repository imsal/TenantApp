class Portfolio < ActiveRecord::Base
=begin
  belongs_to :identifiable, polymorphic: true
  has_many :properties
=end

  has_many :properties


end
