class CreateFinancialTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :financial_transactions do |t|
      t.string :description
      t.date :date
      t.references :fund, null: false, foreign_key: true
      t.references :chart_of_account, null: false, foreign_key: true

      t.timestamps
    end
  end
end
