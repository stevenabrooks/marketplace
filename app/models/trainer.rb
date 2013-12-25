class Trainer < ActiveRecord::Base
  has_secure_password
  attr_accessible :name, :email, :password, :password_confirmation

  validates :name, :email, :presence => true
  validates :email, :uniqueness => { :case_sensitive => false }
  validates :email, :format => { :with => /@/, :message => " is invalid" }

  has_many :trainer_certifications, dependent: :destroy
  has_many :certifications, through: :trainer_certifications
  has_many :ratings

  def average_rating
    counter = 0
    a = self.ratings.size.to_f
    self.ratings.each do |rating|
      size = rating.rating
      counter += size
    end
    counter/a
  end
end
