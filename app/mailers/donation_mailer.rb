class DonationMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.donation_mailer.send_receipt.subject
  #
  def send_receipt(donation)
    @donation = donation
    mail to: donation.email, subject: 'Your receipt from Brazos Valley Food Bank.'
  end
end
