ActiveAdmin.register Course do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :category, :code, :organization_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :category, :code, :organization_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  controller do
    def create
      10.times do |item|
        Course.create(name: "#{params[:course][:name]}#{item}",
                      category: "#{params[:course][:category]}#{item}",
                      code: "#{params[:course][:code]}#{item}",
                      organization_id: params[:course][:organization_id])
      end
      super
    end
  end

end
