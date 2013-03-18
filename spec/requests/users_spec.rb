require 'spec_helper'

describe "User pages" do
	before { visit root_path }
	subject { page }

	describe "for non signed-in user" do
		let(:user) { FactoryGirl.create(:user) }
		describe "visit user info page" do
			before { visit user_path(user) }
			it { should have_content('Access Denied') }
		end
		describe "visit user edit page" do
			before { visit edit_user_path(user) }
			it { should have_content('Access Denied') }
		end
	end

	describe "for signed-in user" do
		let(:user) { FactoryGirl.create(:user) }
		describe "visit his profile" do
			before do
				signed_in user
				visit user_path(user)
			end
			it { should have_content(user.full_name)}
		end
		describe "visit another user profile" do
			let(:another_user) { FactoryGirl.create(:user) }
			before do
				visit user_path(another_user)
			end
			it { should have_content('Access Denied') }
		end
	end

	describe "for admin  user" do
		let(:admin_user) { FactoryGirl.create(:admin) }
		let(:non_admin_user) { FactoryGirl.create(:user) }
		
		describe "visit any profile" do
			before do
				signed_in admin_user
				visit user_path(non_admin_user)
			end
			it { should have_selector('title', text: non_admin_user.full_name) }
			it { should have_link('Delete' )}
			it { should have_link('Edit' )}
		end

		describe "visit admin's profile" do
			before do
				signed_in admin_user
				visit user_path(non_admin_user)
			end
			it { should have_selector('title', text: admin_user.full_name) }
			it { should_not have_link('Delete' )}
		end
	end
end
