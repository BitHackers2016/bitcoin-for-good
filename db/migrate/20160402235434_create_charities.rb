class CreateCharities < ActiveRecord::Migration
  def change
    create_table :charities do |t|
      t.string :ein
      t.string :name
      t.string :city
      t.string :state
      t.string :country
      t.string :encrypted_email
      t.string :encrypted_email_iv

      t.timestamps null: false
    end
  end
end
