class CreateAppearanceColours < ActiveRecord::Migration
  def change
    create_table :appearance_colours do |t|
      t.string :name

      t.timestamps
    end
  end
end
