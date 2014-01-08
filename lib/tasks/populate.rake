namespace :db do
  desc "Fill database"
  task populate: :environment do
    20.times do |n|
      name  = Faker::Name.name
      email = "name-#{n+1}@gmail.com"
      password  = "password"
      user = User.create!(name: name, 
                      email: email,
                      password: password,
                      password_confirmation: password)
    end
  end
end
