require 'csv'

class Donation < ApplicationRecord

  before_save { email.downcase! }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: 255}, format: {with: VALID_EMAIL_REGEX}, uniqueness: {case_sensitive: false}

  def self.to_csv
    attributes = %w{name email address city state zip donation_date food_type food_detail food_weight money_type money_amount}

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |donation|
        csv << attributes.map { |attr| donation.send(attr) }
      end
    end
  end
end
