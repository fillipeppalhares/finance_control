class CreateChartOfAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :chart_of_accounts do |t|
      t.string :name

      t.timestamps
    end
  end
end
