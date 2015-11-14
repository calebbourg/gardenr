FactoryGirl.define do
  factory :comment do
    rating '1_star'
    message "not sure"
    association :user
    association :place
  end
  factory :user do
  	sequence :email do |n|
  		"calebbourg#{n}@gmail.com"
  	end
  	password "hereispassword"
  	password_confirmation "hereispassword"
  end
  factory :place do
  	name "sacramento"
  	description "this place is dry"
  	address "416 13th st sacramento, ca 95814"
  	association :user
  end
end