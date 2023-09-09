class AddTypeToHotels < ActiveRecord::Migration[7.0]
  def change
    add_column :hotels, :type, :string, :null =>  false
  end
end
