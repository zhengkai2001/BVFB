class DonationsController < ApplicationController
  def new
    @donation = Donation.new
  end

  def create
    @donation = Donation.new(donation_params)
    if @donation.save
      flash[:success] = 'Thanks for your donation!'
      redirect_to root_path
    else
      render 'new'
    end
  end

  def index
    @donations = Donation.all

    if params[:csv]
      file_name = "DonationInfo_#{Date.today}.csv"

      @donations = Donation.all
      send_data @donations.to_csv, filename: file_name
    end
  end

  private

  def donation_params
    params.require(:donation).permit(:name, :email, :address, :city, :state, :zip, :donation_date, :food_type, :food_detail, :food_weight, :money_type, :money_amount)
  end
end
