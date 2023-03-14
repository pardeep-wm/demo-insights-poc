class CreateStatements < ActiveRecord::Migration[7.0]
  def change
    create_table :statements do |t|
      t.references :statement_set
      t.string :title
      t.string :statement_id
      t.string :description
      t.timestamps
    end
  end
end
