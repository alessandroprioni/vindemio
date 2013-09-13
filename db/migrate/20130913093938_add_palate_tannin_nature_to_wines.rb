class AddPalateTanninNatureToWines < ActiveRecord::Migration
  def change
    add_column :wines, :palate_tannin_nature, :text
  end
end
