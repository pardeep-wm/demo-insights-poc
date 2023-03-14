class CreateStatementMappings < ActiveRecord::Migration[7.0]
  def change
    create_table :statement_mappings do |t|

      t.references :assessment_result
      t.references :statement
      t.string :met
      t.timestamps
    end
  end
end
