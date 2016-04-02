class CreateCharities < ActiveRecord::Migration
  def change
    create_table :charities do |t|
      t.string :ein
      t.string :legal_name
      t.string :city
      t.string :state
      t.string :country
      t.string :total_donations
      t.string :total_users
      t.string :last_day_users

      t.timestamps null: false
    end
  end
end
