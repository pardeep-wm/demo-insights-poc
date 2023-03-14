class AddForeignKeysToAssessmentResults < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :assessment_results, :users, column: :submitter_id
    add_foreign_key :assessment_results, :users, column: :assessor_id
  end
end
