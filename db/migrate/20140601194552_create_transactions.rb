class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.string :description
      t.decimal :amount
      t.boolean :income

      t.timestamps
    end
  end
end
