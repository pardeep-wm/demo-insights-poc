ActiveAdmin.register StatementMapping do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :assessment_result_id, :statement_id, :met
  #
  # or
  #
  # permit_params do
  #   permitted = [:assessment_result_id, :statement_id, :met]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
