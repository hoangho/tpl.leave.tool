# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :leave_request do
    leave_type_id 1
    comment "MyText"
    leave_from "2013-03-15 10:07:35"
    leave_to "2013-03-15 10:07:35"
    user_request_id 1
    user_approve_id 1
    is_approved false
  end
end
