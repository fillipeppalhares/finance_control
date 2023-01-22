class CreateAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts do |t|
      t.string :account_number
      t.string :description
      t.string :ancestry
      t.boolean :amount
      t.references :chart_of_account, null: false, foreign_key: true
      t.references :fund, null: false, foreign_key: true
      t.string :type

      t.timestamps
    end

    add_index :accounts, :ancestry
    # add_index :accounts, [:account_number, :description, :ancestry], unique: true # TODO: See if it's allowed
  end
end
