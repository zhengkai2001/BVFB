require 'test_helper'

class DonationMailerTest < ActionMailer::TestCase
  test 'send_receipt' do
    donation = donations(:kai)
    mail = DonationMailer.send_receipt(donation)
    assert_equal 'Your receipt from Brazos Valley Food Bank.', mail.subject
    assert_equal ['zkawaken@gmail.com'], mail.to
    assert_equal ['brazosvalleyfoodbank@gmail.com'], mail.from
    assert_match 'Hi', mail.body.encoded
  end
end
