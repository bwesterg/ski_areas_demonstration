class AddCurrentToAreas < ActiveRecord::Migration[7.0]
  def change
    add_column :areas, :current, :boolean
  end
end
