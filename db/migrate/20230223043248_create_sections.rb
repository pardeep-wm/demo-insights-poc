class CreateSections < ActiveRecord::Migration[7.0]
  def change
    create_table :sections do |t|
      t.string :name
      t.string :title
      t.string :group_code
      t.string :display_log_type
      t.text :owner_ids, array: true, default: []
      t.references :group_term
      t.references :organization
      t.timestamps
    end
  end
end
