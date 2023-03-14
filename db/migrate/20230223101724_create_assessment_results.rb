class CreateAssessmentResults < ActiveRecord::Migration[7.0]
  def change
    create_table :assessment_results do |t|

      t.integer :submitter_id
      t.integer :assessor_id
      t.references :course
      t.references :section
      t.references :group_term
      t.string :activity_name
      t.string :group_term_name
      t.timestamps
    end
  end
end
