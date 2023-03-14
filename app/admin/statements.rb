ActiveAdmin.register Statement do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :statement_set_id, :title, :statement_id, :description
  #
  # or
  #
  # permit_params do
  #   permitted = [:statement_set_id, :title, :statement_id, :description]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
