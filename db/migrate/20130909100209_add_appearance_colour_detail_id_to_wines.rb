class AddAppearanceColourDetailIdToWines < ActiveRecord::Migration
  def change
    add_column :wines, :appearance_colour_detail_id, :integer
  end
end
