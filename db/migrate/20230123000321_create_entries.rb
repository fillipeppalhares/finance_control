class CreateEntries < ActiveRecord::Migration[7.0]
  def change
    create_table :entries do |t|
      t.integer :entry_type
      t.integer :value_cents
      t.string :description
      t.references :fund, null: false, foreign_key: true
      t.references :chart_of_account, null: false, foreign_key: true
      t.references :analytic_account, null: false, foreign_key: true
      t.references :financial_transaction, null: false, foreign_key: true

      t.timestamps
    end
  end
end
