class AddAppearanceObservationToWines < ActiveRecord::Migration
  def change
    add_column :wines, :appearance_observation, :text
  end
end
