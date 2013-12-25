class Certification < ActiveRecord::Base
  attr_accessible :abbreviation, :description, :name

  validates :name, :abbreviation, :uniqueness => true

  has_many :trainer_certifications
  has_many :trainers, through: :trainer_certifications
end
