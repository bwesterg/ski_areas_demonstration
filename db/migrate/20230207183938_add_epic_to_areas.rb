class AddEpicToAreas < ActiveRecord::Migration[7.0]
  def change
    add_column :areas, :epic, :boolean
  end
end
