class RemoveTransactionFromCharity < ActiveRecord::Migration
  def change
    remove_column :charities, :transaction_id, :integer
  end
end
