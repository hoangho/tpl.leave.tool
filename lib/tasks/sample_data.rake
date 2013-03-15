namespace :db do
	desc "Fill database with sample data"
	task populate: :environment do
		make_sexes
		make_position_types
		make_user_roles
		make_users
	end

	def make_sexes
		Sex.create(name: "Male")
		Sex.create(name: "Female")
	end

	def make_position_types
		PositionType.create(name: "Junior Enginner")
		PositionType.create(name: "Engineer")
		PositionType.create(name: "Senior Engineer")
		PositionType.create(name: "Manager")
		PositionType.create(name: "Humance resource")
	end

	def make_user_roles
		UserRole.create(name: "Admin")
		UserRole.create(name: "Manager")
		UserRole.create(name: "Normal")
	end

	def make_users
		make_admin_user
		make_manage_users
		make_normal_users
	end

	def make_admin_user
		User.create(first_name: "TPL", last_name: "Admin System", email: "hoang.ho@techpropulsionlabs.com",
		 user_role_id: 1, position_type_id: 5, sex_id: 2, day_of_birth: DateTime.now, admin:true, balance: rand(10))
	end

	def make_manage_users
		1.upto(4) do |i|
			User.create(first_name: "TPL", last_name: "Manager #{i}", email: "manager#{i}@techpropulsionlabs.com", 
				user_role_id: 2, position_type_id: 4, sex_id: (rand(1) + 1), day_of_birth: DateTime.now,
				 admin:false, balance: rand(10))
		end
	end

	def make_normal_users
		1.upto(40) do |i|
			User.create(first_name: "TPL", last_name: "User #{i}", email: "user#{i}@techpropulsionlabs.com", 
				user_role_id: 3, position_type_id: (rand(2) + 1), sex_id: (rand(1) + 1), day_of_birth: DateTime.now,
				 admin:false, balance: rand(10))
		end
	end

end