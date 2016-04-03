class AddTransactionToCharity < ActiveRecord::Migration
  def change
    add_reference :charities, :transaction, index: true, foreign_key: true
  end
end
