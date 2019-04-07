class CreateBankAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :bank_accounts do |t|
      t.string :bank_name
      t.integer :bank_account_no
      t.string :account_type
      t.references :personal_detail, foreign_key: true

      t.timestamps
    end
  end
end
