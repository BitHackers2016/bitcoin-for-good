class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.string :charity
      t.jsonb :encrypted_data

      t.timestamps null: false
    end
  end
end
