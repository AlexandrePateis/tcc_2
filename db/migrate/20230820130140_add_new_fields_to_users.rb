class AddNewFieldsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :name, :string, null: false
    add_column :users, :birthdate, :date
    add_column :users, :cpf, :string
    add_column :users, :gender, :boolean
    add_column :users, :phone, :string
  end
end
