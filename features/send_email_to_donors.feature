Feature: send email to donors

  Background: donations in database

    Given the following donations exist:
      | name        | email                | address    | city    | state | zip   | donation_date | food_type | food_detail | food_weight | money_type | money_amount
      | Kai Zheng   | zkawaken@gmail.com   | tower park | Houston | Texas | 77000 | 2012-01-09    | Sugar     | Sugars      | 20          | Cash       | 200
      | Mincan He   | hemincan@outlook.com | wolf       | Dallas  | Texas | 78000 | 2013-06-06    | Fruit     | Banana      | 10          | None       | 0
      | Haoran Wang | haoranwang@tamu.edu  | wolf       | Austin  | Texas | 79000 | 2015-10-25    | Meat      | Pork        | 5           | Check      | 500

  Scenario: visit the donations page of Brazos Valley Food Bank
    When I go to the donations page of Brazos Valley Food Bank
    Then I should see "Kai Zheng"
    Then I should see "hemincan@outlook.com"
    Then I should see "Austin"

  Scenario: visit a donation detail page of Brazos Valley Food Bank
    When I go to the details page for "Mincan He"
    Then I should see "Mincan He"
    Then I should see "hemincan@outlook.com"
    Then I should see "wolf"
    Then I should see "Dallas"
    Then I should see "Texas"
    Then I should see "78000"
    Then I should see "Fruit"
    But  I should not see "Kai Zheng"
    But  I should not see "Haoran Wang"

  Scenario: add a new donation
    When I go to the home page of Brazos Valley Food Bank
    But  I should not see "Jiangtian Qian"

    When I follow "Donate"
    Then I should see "Donate"
    Then I should see "Donation's Information"
    Then I should see "Donor's Information"
    And  I fill in "Food type" with "Drink"
    And  I fill in "Food detail" with "Juice"
    And  I fill in "donation_name" with "Jiangtian Qian"
    And  I fill in "Address" with "Enclave"
    And  I fill in "City" with "New York"
    And  I fill in "State" with "NY"
    And  I fill in "Zip" with "66666"
    And  I fill in "Email" with "qjt@gmail.com"
    And  I select "Cash" in "Money type"
    And  I select date "2016/12/11" in "Donation date"
    And  I press "Submit"

    When I go to the donations page of Brazos Valley Food Bank
    But  I should see "Jiangtian Qian"

    When I go to the details page for "Jiangtian Qian"
    Then I should see "Enclave"
    Then I should see "New York"
    Then I should see "66666"
    But  I should not see "Mincan He"