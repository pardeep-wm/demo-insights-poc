class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :email
      t.string :role
      t.string :major
      t.string :ethnicity
      t.boolean :first_generation_student
      t.boolean :transfer_student
      t.boolean :pell_eligibility
      t.string :academic_program
      t.references :organization
      t.timestamps
    end
  end
end
