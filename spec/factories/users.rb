# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    admin false
    balance 1.5
    day_of_birth "2013-03-15 12:44:01"
    email "MyString"
    first_name "MyString"
    last_name "MyString"
    identifier_url "MyString"
    position_type_id 1
    remember_token "MyString"
    sex_id 1
    start_work_day "2013-03-15 12:44:01"
    user_role_id 1
  end
end
