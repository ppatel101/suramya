ActiveAdmin.register Member do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
  filter :vehicle_number

  permit_params :flat, :name_in_english, :name_in_gujrati, :contact_no1, :contact_no2, vehicles_attributes: [:id, :number, :vehicle_type, :_destroy]


  form do |f|
    
    f.inputs do
	    f.input :flat
	    f.input :name_in_english
	    f.input :name_in_gujrati
	    f.input :contact_no1
	    f.input :contact_no2
	  end

	  f.inputs do
      f.has_many :vehicles, allow_destroy: true do |a|
        a.input :number
        a.input :vehicle_type
      end
    end

    f.actions
  end



end
