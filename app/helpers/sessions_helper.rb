module SessionsHelper
	#user sign in
	def sign_in(user)
	#remember token
    cookies.permanent[:remember_token] = user.remember_token
    # cookies[:remember_token] = { value:   user.remember_token,
   	#                         expires: 20.years.from_now.utc }
   	#set current user
    self.current_user = user
	end

	#determine user is signed in or not
	def signed_in?
  		!current_user.nil?
	end

	#set current user
	def current_user=(user)
  		@current_user = user
	end

	#set current user
	def current_user
  	@current_user ||= User.find_by_remember_token(cookies[:remember_token])
	end

	#sign out
	def sign_out
		#set current user id nil
  	self.current_user = nil
  	#remove token
  	cookies.delete(:remember_token)
	end

  	def ensure_signed_in
	    unless signed_in?
	      store_location
	      redirect_to new_session_path
	    end
  	end

  	def redirect_back_or(default)
		redirect_to(session[:return_to] || default)
		session.delete(:return_to)
	end

	def store_location
		session[:return_to] = request.url
	end
end
