class AddCharityToTransaction < ActiveRecord::Migration
  def change
    add_reference :transactions, :charity, index: true, foreign_key: true
  end
end
