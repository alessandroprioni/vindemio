class AddNoseIntensityIdToWines < ActiveRecord::Migration
  def change
    add_column :wines, :nose_intensity_id, :integer
  end
end
