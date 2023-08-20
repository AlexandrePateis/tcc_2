class CreateFinancialAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :financial_accounts do |t|
      t.string :bank, null: false
      t.string :name_account
      t.integer :number_account, null: false
      t.integer :agency, null: false
      t.text :description

      t.timestamps
    end
  end
end
