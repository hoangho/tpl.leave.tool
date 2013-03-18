require 'spec_helper'
include ApplicationHelper
include SessionsHelper

#user sign in
def signed_in(user)
	#remember token
	# user.remember_token = "ManualRememberToken"
    cookies[:remember_token] = user.remember_token
    # cookies[:remember_token] = { value:   user.remember_token,
   	#                         expires: 20.years.from_now.utc }
   	#set current user
    self.current_user = user
end

#user sign out
def sign_out(user)
	#Delete token
   	cookies.delete(:remember_token)
   	#set current user
    self.current_user = nil
end

def full_title(page_title)
  base_title = "sample app"
  if page_title.empty?
    base_title
  else
    "#{base_title} | #{page_title}"
  end
end