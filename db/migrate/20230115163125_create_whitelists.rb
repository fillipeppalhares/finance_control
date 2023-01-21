class CreateWhitelists < ActiveRecord::Migration[7.0]
  def change
    create_table :whitelists do |t|
      t.references :chart_of_account, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
