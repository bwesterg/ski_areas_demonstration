class CreateAreas < ActiveRecord::Migration[7.0]
  def change
    create_table :areas do |t|
      t.string :name
      t.string :state
      t.integer :vertical

      t.timestamps
    end
  end
end
