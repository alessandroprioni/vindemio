class AddPalateFinishIdToWines < ActiveRecord::Migration
  def change
    add_column :wines, :palate_finish_id, :integer
  end
end
