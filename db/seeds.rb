# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do
  @user = User.create(email: Faker::Internet.email, name: Faker::Name.name)
  (rand(5)).times do
    @user.hobbies.create(title: Faker::Commerce.color, user_id: @user.id)
  end
end
