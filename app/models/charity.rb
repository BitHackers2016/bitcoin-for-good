class Charity < ActiveRecord::Base
	attr_encrypted :email, key: :encyption_key
  validates :ein, presence: true
  validates :name, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :country, presence: true
  
	def encryption_key
		'This is the charity email!!'
	end
end
