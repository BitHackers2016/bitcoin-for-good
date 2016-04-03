class User < ActiveRecord::Base
  attr_encrypted :email, key: :encryption_key
  attr_encrypted :data, key: :encryption_key
  attr_encrypted :name, key: :encryption_key

  has_many :transactions

  def encryption_key
    'This is some user encrypted field'
  end
end
