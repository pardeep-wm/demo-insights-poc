class StatementMapping < ApplicationRecord
  belongs_to :assessment_result
  belongs_to :statement
end
