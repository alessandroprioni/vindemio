class AddPalateTanninIdToWines < ActiveRecord::Migration
  def change
    add_column :wines, :palate_tannin_id, :integer
  end
end
