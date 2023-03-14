ActiveAdmin.register User do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :username, :first_name, :last_name, :gender, :email, :role, :major, :ethnicity, :first_generation_student, :transfer_student, :pell_eligibility, :academic_program, :organization_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:username, :first_name, :lsat_name, :gender, :email, :role, :major, :ethnicity, :first_generation_student, :transfer_student, :pell_eligibility, :academic_program]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
