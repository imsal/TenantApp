class Vendor < ActiveRecord::Base

=begin
  belongs_to :property
  has_many :contacts
=end

  has_many :contacts
  has_and_belongs_to_many :properties


end
