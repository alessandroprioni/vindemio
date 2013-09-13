class AddAppearanceIntensityIdToWines < ActiveRecord::Migration
  def change
    add_column :wines, :appearance_intensity_id, :integer
  end
end
