class AddEncryptedToUser < ActiveRecord::Migration
  def change
    add_column :users, :encrypted_email_iv, :string
    add_column :users, :encrypted_data_iv, :string
  end
end
