class AddPalateAcidityIdToWine < ActiveRecord::Migration
  def change
    add_column :wines, :palate_acidity_id, :integer
  end
end
