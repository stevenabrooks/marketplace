class Trainer < ActiveRecord::Base
  has_secure_password
  attr_accessible :name, :email, :password, :password_confirmation

  validates :name, :email, :presence => true
  validates :email, :uniqueness => { :case_sensitive => false }
  validates :email, :format => { :with => /@/, :message => " is invalid" }

  has_many :trainer_certifications, dependent: :destroy
  has_many :certifications, through: :trainer_certifications

end
