class CreateRubricMappings < ActiveRecord::Migration[7.0]
  def change
    create_table :rubric_mappings do |t|

      t.references :assessment_result
      t.references :rubric
      t.jsonb :performance, null: false, default: '{}'
      t.timestamps
    end
  end
end
