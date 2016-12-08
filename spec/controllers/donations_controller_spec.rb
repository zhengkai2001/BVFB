require 'rails_helper'

require 'database_cleaner'
DatabaseCleaner.strategy = :truncation

RSpec.describe DonationsController, type: :controller do
  donations_data = [
      {:name => 'Kai Zheng', :email => 'zkawaken@gmail.com', :address => 'tower park', :city => 'Houston', :state => 'Texas', :zip => 77000, :donation_date => '2012-01-09', :food_type => 'Sugar', :food_detail => 'Mentos', :food_weight => '20', :money_type => 'Cash', :money_amount => 200},
      {:name => 'Mincan He', :email => 'hemincan@outlook.co', :address => 'wolf', :city => 'Dallas', :state => 'Texas', :zip => 78000, :donation_date => '2016-06-06', :food_type => 'Fruit', :food_detail => 'Banana', :food_weight => '10', :money_type => 'None', :money_amount => 0},
      {:name => 'Haoran Wang', :email => 'haoranwang@tamu.edu', :address => 'wolf', :city => 'Austin', :state => 'Texas', :zip => 79000, :donation_date => '2015-10-25', :food_type => 'Meat', :food_detail => 'Pork', :food_weight => 5, :money_type => 'Check', :money_amount => 500}
  ]

  before :all do
    DatabaseCleaner.clean
    donations_data.each do |donation|
      Donation.create! donation
    end
  end

  render_views

  describe 'Browse in Brazos Valley Food Bank' do
    context 'visit the donations page of Brazos Valley Food Bank' do
      it 'should display the donations page' do
        get :index

        expect(response).to render_template(:index)
        expect(response.status).to eq(200)

        expect(response.body).to match(/All Donations/)
        expect(response.body).to match(/Kai Zheng/)
        expect(response.body).to match(/Mincan He/)
        expect(response.body).to match(/Haoran Wang/)
      end
    end

    context 'visit the details page of a donation' do
      it 'should display the details page of a donation' do
        get :show, params: {id: 1}

        expect(response).to render_template(:show)
        expect(response.status).to eq(200)

        expect(response.body).to match(/Kai Zheng/)
        expect(response.body).not_to match(/Mincan He/)
        expect(response.body).not_to match(/Haoran Wang/)
      end
    end

    context 'add a new donation' do
      it 'should add a new donation using given information' do
        get :index
        expect(response.body).not_to match(/Jiangtian Qian/)

        post :create, params: {:donation => {:name => 'Jiangtian Qian', :email => 'jiangtianqian@tamu.edu', :address => 'enclave', :city => 'New York', :state => 'NY', :zip => 67000, :donation_date => '2013-09-03', :food_type => 'Noodle', :food_detail => 'Nissin', :food_weight => '15', :money_type => 'Cash', :money_amount => 100}}

        get :index
        expect(response.body).to match(/Jiangtian Qian/)
      end
    end
  end
end
