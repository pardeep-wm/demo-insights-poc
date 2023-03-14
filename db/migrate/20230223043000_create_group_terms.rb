class CreateGroupTerms < ActiveRecord::Migration[7.0]
  def change
    create_table :group_terms do |t|
      t.string :name
      t.date :start_date
      t.date :end_date
      t.string :code
      t.references :organization
      t.timestamps
    end
  end
end
