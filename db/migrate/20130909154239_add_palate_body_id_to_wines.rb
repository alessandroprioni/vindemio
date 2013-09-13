class AddPalateBodyIdToWines < ActiveRecord::Migration
  def change
    add_column :wines, :palate_body_id, :integer
  end
end
