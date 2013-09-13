class AddPalateFlavintensityToWines < ActiveRecord::Migration
  def change
    add_column :wines, :palate_flavintensity_id, :integer
  end
end
