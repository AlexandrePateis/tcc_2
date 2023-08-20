class CreateFormOfPayments < ActiveRecord::Migration[7.0]
  def change
    create_table :form_of_payments do |t|
      t.string :name
      t.references :financial_account, null: false, foreign_key: true
      
      t.timestamps
    end
  end
end
