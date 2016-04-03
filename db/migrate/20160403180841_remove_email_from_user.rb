class RemoveEmailFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :encrypted_email, :string
    remove_column :users, :encrypted_email_iv, :string
  end
end
