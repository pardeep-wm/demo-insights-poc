class GroupTerm < ApplicationRecord
  belongs_to :organization
  has_many :sections
  has_many :assessment_results
end
