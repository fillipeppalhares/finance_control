class CreateChartOfAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :chart_of_accounts do |t|
      t.references :fund, null: false, foreign_key: true
      t.string :description
      t.string :money

      t.timestamps
    end
  end
end
