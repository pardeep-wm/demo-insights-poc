class Organization < ApplicationRecord
  has_many :users
  has_many :statement_sets
  has_many :rubrics
  has_many :courses
  has_many :group_terms
  has_many :sections
end
