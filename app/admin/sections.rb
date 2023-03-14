ActiveAdmin.register Section do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :title, :group_code, :display_log_type, :group_term_id, :organization_id, owner_ids: []
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :title, :group_code, :display_log_type, :owner_ids, :group_term_id, :organization_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  controller do
    def create
      1.times do |item|
        attributes = [:name, :title, :group_code, :display_log_type]
        payload = {}
        attributes.map{ |attr| payload[attr] = "#{params[:section][attr]}#{item}"}
        payload[:organization_id] = params[:section][:organization_id]
        payload[:group_term_id] = params[:section][:group_term_id]
        payload[:owner_ids] = params[:section][:owner_ids].reject(&:empty?)
        Section.create(payload)
      end
      redirect_to admin_sections_url
    end
  end

  form(html: {:multipart => true}) do |f|
    f.inputs "Section Details" do 
      f.input :name
      f.input :title
      f.input :group_code
      f.input :display_log_type
      f.input :owner_ids, as: :select, input_html: { multiple: true }, collection: User.all.map {|u| [u.username, u.id]}
      f.input :organization
      f.input :group_term
      f.button :submit
    end
  end
  
end
