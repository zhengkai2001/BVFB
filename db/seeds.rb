# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

donations = Donation.create
([
    {:name => 'Kai Zheng', :email => 'zkawaken@gmail.com', :address => 'tower park', :city => 'Houston', :state => 'Texas', :zip => 77000, :donation_date => '2012-01-09', :food_type => 'Sugar', :food_detail => 'Mentos', :food_weight => '20', :money_type => 'Cash', :money_amount => 200},
    {:name => 'Mincan He', :email => 'hemincan@outlook.co', :address => 'wolf', :city => 'Dallas', :state => 'Texas', :zip => 78000, :donation_date => '2016-06-06', :food_type => 'Fruit', :food_detail => 'Banana', :food_weight => '10', :money_type => 'None', :money_amount => 0},
    {:name => 'Haoran Wang', :email => 'haoranwang@tamu.edu', :address => 'wolf', :city => 'Austin', :state => 'Texas', :zip => 79000, :donation_date => '2015-10-25', :food_type => 'Meat', :food_detail => 'Pork', :food_weight => 5, :money_type => 'Check', :money_amount => 500}
])
