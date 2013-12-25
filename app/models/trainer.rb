class Trainer < ActiveRecord::Base
  has_secure_password
  attr_accessible :email, :password, :password_confirmation

  validates :email, :presence => true
  validates :email, :uniqueness => { :case_sensitive => false }
  validates :email, :format => { :with => /@/, :message => " is invalid" }
end
