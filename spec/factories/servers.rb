# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :server do
    server_use "MyString"
    server_name "MyString"
    server_alias "MyString"
    server_address "MyString"
    hostgroup_id 1
  end
end
