class CreateRubrics < ActiveRecord::Migration[7.0]
  def change
    create_table :rubrics do |t|
      t.string :name
      t.string :title
      t.string :state
      t.string :type
      t.references :user
      t.references :organization
      t.timestamps
    end
  end
end
