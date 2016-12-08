require 'rails_helper'

require 'database_cleaner'
DatabaseCleaner.strategy = :truncation

RSpec.describe Donation, type: :model do
  donations_data = [
      {:name => 'Kai Zheng', :email => 'zkawaken@gmail.com', :address => 'tower park', :city => 'Houston', :state => 'Texas', :zip => 77000, :donation_date => '2012-01-09', :food_type => 'Sugar', :food_detail => 'Mentos', :food_weight => '20', :money_type => 'Cash', :money_amount => 200},
      {:name => 'Mincan He', :email => 'hemincan@outlook.co', :address => 'wolf park', :city => 'Dallas', :state => 'Texas', :zip => 78000, :donation_date => '2016-06-06', :food_type => 'Fruit', :food_detail => 'Banana', :food_weight => '10', :money_type => 'None', :money_amount => 0},
      {:name => 'Haoran Wang', :email => 'haoranwang@tamu.edu', :address => 'wolf park', :city => 'Austin', :state => 'Texas', :zip => 79000, :donation_date => '2015-10-25', :food_type => 'Meat', :food_detail => 'Pork', :food_weight => 5, :money_type => 'Check', :money_amount => 500}
  ]


  before :all do
    DatabaseCleaner.clean
    donations_data.each do |donation|
      Donation.create! donation
    end
  end

  describe "Find Donation by Donor's address" do
    context 'the specified donation has director information' do
      it 'should find donations with the specified address' do
        donations = Donation.where(:address => 'wolf park')
        expect(donations.length).to eq 2
      end
    end
  end
end
