class RenameTypeColumnInHotels < ActiveRecord::Migration[7.0]
  def change
    rename_column :hotels, :type, :hotel_type
  end
  
end
