class Tenant < ActiveRecord::Base

  attr_accessor :suite_attributes
  has_one :suite, as: :identifiable
  accepts_nested_attributes_for :suite


  has_many :contacts



  validates :email, :allow_blank => true, format: { with: /\A([\w+\-]\.?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i , message: "Please enter a valid email address." }
  validates :phone_direct, :allow_nil => true, format: {with: /\d?\D?\d{3}\D?\d{3}\D?\d{4}/, message: "Please enter a valid phone number."}
  validates :phone_direct_ext, :allow_nil => true, format: {with: /\d{0,5}/, message: "Please enter a valid extension."}
  validates :phone_mobile, :allow_nil => true, format: {with: /\d?\D?\d{3}\D?\d{3}\D?\d{4}/, message: "Please enter a valid phone number."}
  validates :fax_number, :allow_nil => true, format: {with: /\d?\D?\d{3}\D?\d{3}\D?\d{4}/, message: "Please enter a valid fax number." }

  validates :first_name, presence: true

end
