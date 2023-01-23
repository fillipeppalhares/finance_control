class CreateSyntheticAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :synthetic_accounts do |t|

      t.timestamps
    end
  end
end
