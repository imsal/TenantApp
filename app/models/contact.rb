class Contact < ActiveRecord::Base

  belongs_to :vendor
  belongs_to :tenant

end
