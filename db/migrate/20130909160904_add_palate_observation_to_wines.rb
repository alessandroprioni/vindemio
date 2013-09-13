class AddPalateObservationToWines < ActiveRecord::Migration
  def change
    add_column :wines, :palate_observation, :text
  end
end
