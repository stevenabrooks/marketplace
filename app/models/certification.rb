class Certification < ActiveRecord::Base
  attr_accessible :abbreviation, :description, :name

  validates :name, :abbreviation, :uniqueness => true
end
