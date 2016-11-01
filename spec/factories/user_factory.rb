FactoryGirl.define do
  
  factory :user do
    email "bubbagump@gmail.com"
    password "password1"
    first_name "Bubba"
    last_name "Gump"
    admin false
  end
  
  factory :admin, class: User do
      email "admin@example.com"
      password "password1"
      admin true
      first_name "Admin"
      last_name "User"
    end
  
  
end