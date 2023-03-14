class StatementSet < ApplicationRecord
  belongs_to :organization
  has_many :statements
end
