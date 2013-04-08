# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :command do
    command_description "MyString"
    command_check "MyString"
  end
end
