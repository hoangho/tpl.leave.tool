# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    first_name "MyString"
    last_name "MyString"
    day_of_birth "2013-03-15 10:49:38"
    balance 1.5
    user_rold_id 1
    position_type_id 1
    admin false
    start_work_day "2013-03-15 10:49:38"
    sex_id 1
    email "MyString"
    remember_token "MyString"
    identifier_url "MyString"
  end
end
