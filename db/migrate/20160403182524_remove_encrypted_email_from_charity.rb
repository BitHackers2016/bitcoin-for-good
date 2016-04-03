class RemoveEncryptedEmailFromCharity < ActiveRecord::Migration
  def change
    remove_column :charities, :encrypted_email, :string
    remove_column :charities, :encrypted_email_iv, :string
  end
end
