# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :service do
    service_use "MyString"
    service_definition "MyString"
    hostgroup_id 1
  end
end
