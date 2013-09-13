class AddAppearanceColourIdToWines < ActiveRecord::Migration
  def change
    add_column :wines, :appearance_colour_id, :integer
  end
end
