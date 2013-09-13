class AddPalateAlcoholIdToWines < ActiveRecord::Migration
  def change
    add_column :wines, :palate_alcohol_id, :integer
  end
end
