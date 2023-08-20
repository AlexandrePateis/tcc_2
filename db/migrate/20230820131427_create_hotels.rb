class CreateHotels < ActiveRecord::Migration[7.0]
  def change
    create_table :hotels do |t|
      t.string :name, null: false
      t.string :cnpj
      t.string :phone
      t.string :responsible

      t.timestamps
    end
  end
end
