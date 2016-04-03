class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.string :charity_name
      t.string :charity_id
      t.json :encrypted_data
      t.string :encrypted_data_iv
      t.string :encrypted_user_id
      t.string :encrypted_user_id_iv

      t.timestamps null: false
    end
  end
end
