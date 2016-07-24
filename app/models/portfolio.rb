class Portfolio < ActiveRecord::Base

  belongs_to :identifiable, polymorphic: true
  has_many :properties

end
