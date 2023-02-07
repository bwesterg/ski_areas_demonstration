class AddIkonToAreas < ActiveRecord::Migration[7.0]
  def change
    add_column :areas, :ikon, :boolean
  end
end
