module ApplicationHelper
   def signed_in?
       if session[:user_id].nil?
	return
       else
	@current_user = User.find_by_id(session[:user_id])
       end
  end
  def euro(amount)         #method with formal parameter
   number_to_currency(amount, :unit => "&euro;") #entity reference
   end

end
