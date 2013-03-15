class StaticPagesController < ApplicationController
  def home
  	@title_page = ""
  end

  def about
  	@title_page = "About"
  end

  def contact
  	@title_page = "Contact"
  end
end
