class RubricMapping < ApplicationRecord
  belongs_to :assessment_result
  belongs_to :rubric
end
