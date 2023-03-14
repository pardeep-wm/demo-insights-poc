class CreateStatementSets < ActiveRecord::Migration[7.0]
  def change
    create_table :statement_sets do |t|

      t.references :organization
      t.string :title
      t.string :abbreviation

      t.timestamps
    end
  end
end
