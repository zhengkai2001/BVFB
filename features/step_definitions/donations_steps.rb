require 'database_cleaner'
DatabaseCleaner.strategy = :truncation

Given(/^the following donations exist:$/) do |donations_table|
  DatabaseCleaner.clean
  donations_table.hashes.each do |donation|
    Donation.create! donation
  end
end

Then(/^the email of "([^"]*)" should be "([^"]*)"$/) do |name, email|
  @donation=Donation.where(name: name).first
  expect(@donation.email).to eql email
end
