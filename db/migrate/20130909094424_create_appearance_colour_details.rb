class CreateAppearanceColourDetails < ActiveRecord::Migration
  def change
    create_table :appearance_colour_details do |t|
      t.string :name
      t.integer :appearance_colour_id

      t.timestamps
    end
  end
end
