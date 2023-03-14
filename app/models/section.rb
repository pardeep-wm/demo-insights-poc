class Section < ApplicationRecord
  belongs_to :organization
  belongs_to :group_term
  has_many :assessment_results
end
