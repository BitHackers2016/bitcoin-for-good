class Transaction < ActiveRecord::Base
  attr_encrypted :data, key: :encryption_key
  attr_encrypted :user_id, key: :encryption_key

  def encryption_key
    'This is a transaction encryption key'
  end
end
