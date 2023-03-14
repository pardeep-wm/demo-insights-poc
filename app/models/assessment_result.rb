class AssessmentResult < ApplicationRecord
  belongs_to :submitter, class_name: 'User'
  belongs_to :assessor, class_name: 'User'
  belongs_to :section
  belongs_to :course
  belongs_to :group_term
  has_many :rubric_mappings
  has_many :statement_mappings
  accepts_nested_attributes_for :statement_mappings, :allow_destroy => true
  accepts_nested_attributes_for :rubric_mappings, :allow_destroy => true
end
