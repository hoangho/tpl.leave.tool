require 'Uri'
class ApplicationController < ActionController::Base
  	protect_from_forgery
  	include SessionsHelper

  	def redirect_to_access_denied_path
  		 redirect_to access_denied_path
  	end

  	
end
