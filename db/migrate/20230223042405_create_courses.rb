class CreateCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :category
      t.string :code
      t.references :organization
      t.timestamps
    end
  end
end
