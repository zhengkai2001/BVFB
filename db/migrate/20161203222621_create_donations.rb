class CreateDonations < ActiveRecord::Migration[5.0]
  def change
    create_table :donations do |t|
      t.string :name
      t.string :email
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip
      t.date :donation_date
      t.string :food_type
      t.string :food_detail
      t.integer :food_weight
      t.string :money_type
      t.integer :money_amount

      t.timestamps
    end
  end
end
