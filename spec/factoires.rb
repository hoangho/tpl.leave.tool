FactoryGirl.define  do
	factory :user do
		first_name "Hoang"
		last_name "Ho"
		email "hoang.ho@techpropulsionlabs.com"
		user_role_id 1
		sex_id 1
		position_type_id 1
		day_of_birth DateTime.now
		balance 5.0
		admin false
		
		factory :admin do
			admin true
		end
	end

	factory :user_role do
		sequence(:name) { |n| {"Admin", "Manager", "Normal"} }
	end

	factory :position_type do
		sequence(:name) { |n| {"Manager", "Dev", "Human resource"} }
	end

	factory :sex do
		sequence(:name) { |n| {"Male", "Female"} }
	end
end