class TrainerCertification < ActiveRecord::Base
  attr_accessible :certification_id, :trainer_id

  belongs_to :trainer
  belongs_to :certification

  validates_uniqueness_of :certification_id, :scope => :trainer_id
end
