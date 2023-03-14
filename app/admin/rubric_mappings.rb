ActiveAdmin.register RubricMapping do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :assessment_result_id, :rubric_id, :performance
  #
  # or
  #
  # permit_params do
  #   permitted = [:assessment_result_id, :rubric_id, :performance]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
