class AddEncryptedToTransactions < ActiveRecord::Migration
  def change
    add_column :transactions, :encrypted_data_iv, :string
  end
end
