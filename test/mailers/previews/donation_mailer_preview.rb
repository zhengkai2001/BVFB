# Preview all emails at http://localhost:3000/rails/mailers/donation_mailer
class DonationMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/donation_mailer/send_receipt
  def send_receipt
    donation = Donation.first
    DonationMailer.send_receipt(donation)
  end

end
