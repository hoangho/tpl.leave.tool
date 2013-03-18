require 'spec_helper'

describe "Static Page" do
	
	before { visit root_path }
	subject { page }
	# Home
	describe "Home page" do
		it { should have_selector('title', text:"Leave Tool")}
	end
	
	#About
	describe "About page" do
		before { visit about_path }
		it { should have_selector('title', text: 'About') }
	end

	#Contact
	describe "Contact page" do
		before { visit contact_path }
		it { should have_selector('title', text: 'Contact') }
	end

end