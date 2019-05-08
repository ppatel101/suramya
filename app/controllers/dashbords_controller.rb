class DashbordsController < ApplicationController
  respond_to :html, :json
	def search
    if params[:search].present?
    	q = "%#{params[:search]}%"
    	 @members= Member.joins(:vehicles).where('members.flat LIKE ? or members.name_in_english LIKE ? or members.name_in_gujrati LIKE ? or members.contact_no1 LIKE ? or members.contact_no2 LIKE ? or vehicles.number LIKE ?' , q, q, q, q, q, q)
    else
    	@members = Member.includes(:vehicles).limit(10)    	
    end
    respond_with(@posts)

	end

end
