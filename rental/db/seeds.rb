# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

b1 = User.create(:email => 'Ivan@yahoo.com', :password => '123', :name => 'Ivan', :surname => 'Veselinov', :mobile => '415999555', :phone => '4444', :image => 'https://media.istockphoto.com/photos/white-passenger-bus-picture-id135327019?k=20&m=135327019&s=612x612&w=0&h=YJneXYFReSVuKSIFOy5wGIygeLeb1UquX4BWLk-MluI=')

b2 = User.create(:email => 'Ivan@ga', :password => '12', :name => 'Ivan', :surname => 'Veselinov', :mobile => '415999555', :phone => '4444', :image => 'https://media.istockphoto.com/photos/white-passenger-bus-picture-id135327019?k=20&m=135327019&s=612x612&w=0&h=YJneXYFReSVuKSIFOy5wGIygeLeb1UquX4BWLk-MluI=')

b2 = User.create(:email => 'I@ga', :password => '12', :name => 'Ivan', :surname => 'Veselinov', :mobile => '415999555', :phone => '4444', :image => 'https://media.istockphoto.com/photos/white-passenger-bus-picture-id135327019?k=20&m=135327019&s=612x612&w=0&h=YJneXYFReSVuKSIFOy5wGIygeLeb1UquX4BWLk-MluI=', :admin => true)

puts "#{User.count} Users"



Agent.destroy_all

a1 = Agent.create(:name => 'Ivan', :surname => 'Veselinov', :mobile => '041599999', :phone => '1231231232', :email => 'ivan_veselinov@yahoo.com', :image => 'https://images.theconversation.com/files/38926/original/5cwx89t4-1389586191.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=926&fit=clip')

a2 = Agent.create(:name => 'Milan', :surname => 'Milanov', :mobile => '041599999', :phone => '1231231232', :email => 'Milan@yahoo.com', :image => 'https://images.theconversation.com/files/38926/original/5cwx89t4-1389586191.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=926&fit=clip')

puts "#{ Agent.count} Agents"



Property.destroy_all

p1 = Property.create(:adress => '97 Moonstone Circuit', :suburb => 'St.Albans', :postcode => 3021, :rooms => 5, :livingrooms => 1, :bathrooms => 1, :toilets => 1, :garage => 1, :pspace => 2, :rent => 350, :photos => 'https://static.dezeen.com/uploads/2020/02/house-in-the-landscape-niko-arcjitect-architecture-residential-russia-houses-khurtin_dezeen_2364_hero.jpg')

p2 = Property.create(:adress => '12  Circuit', :suburb => 'Carroline springs', :postcode => 3021, :rooms => 5, :livingrooms => 1, :bathrooms => 1, :toilets => 1, :garage => 1, :pspace => 2, :rent =>350, :photos => 'https://static.dezeen.com/uploads/2020/02/house-in-the-landscape-niko-arcjitect-architecture-residential-russia-houses-khurtin_dezeen_2364_hero.jpg')


puts "#{ Property.count} Properties"


# ASSOCIATIONS ////////////////////
puts "Agents and Properties"

a1.properties << p1 << p2
a2.properties << p2 << p1

puts "Users Properties"
b1.properties << p1 <<p2
b2.properties << p2 <<p1
