class User < ApplicationRecord
  belongs_to :organization
  has_many :rubrics
  has_many :submitted_assessments, class_name: 'AssessmentResult', foreign_key: 'submitter_id'
  has_many :assessed_assessments, class_name: 'AssessmentResult', foreign_key: 'assessor_id'
end
