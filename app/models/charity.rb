class Charity < ActiveRecord::Base
  validates :ein, presence: true
  validates :name, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :country, presence: true

  has_many :transactions
end
