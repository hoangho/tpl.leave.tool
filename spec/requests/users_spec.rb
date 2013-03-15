require 'spec_helper'

describe "User pages" do

  describe "visit user infor page" do
  	let(:user) { FactoryGirl.create(:user) }
  	describe "for non-signed-in user" do
  		before { visit user_path(user) }
  		it { page.should have_content('Access Denied')}
  	end

  end

end
