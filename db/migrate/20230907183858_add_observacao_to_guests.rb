class AddObservacaoToGuests < ActiveRecord::Migration[7.0]
  def change
    add_column :guests, :observation, :text
  end
end
