class Rating < ActiveRecord::Base
  attr_accessible :rating, :trainer_id

  validates :trainer_id, :rating, :presence => true
  validates :rating, :inclusion => 1..10

  belongs_to :trainer

end
