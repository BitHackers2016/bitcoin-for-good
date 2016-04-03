class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :encrypted_email
      t.string :encrypted_email_iv
      t.json :encrypted_data
      t.string :encrypted_data_iv
      t.string :encrypted_name
      t.string :encrypted_name_iv

      t.timestamps null: false
    end
  end
end
