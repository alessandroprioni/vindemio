class AddPalateSweetnessIdToWine < ActiveRecord::Migration
  def change
    add_column :wines, :palate_sweetness_id, :integer
  end
end
