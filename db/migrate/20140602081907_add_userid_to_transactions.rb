class AddUseridToTransactions < ActiveRecord::Migration
  def change
    add_column :transactions, :user_id, :integer
    add_column :transactions, :category_id, :integer
  end
end
