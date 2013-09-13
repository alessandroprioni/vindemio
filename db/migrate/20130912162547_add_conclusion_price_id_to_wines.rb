class AddConclusionPriceIdToWines < ActiveRecord::Migration
  def change
    add_column :wines, :conclusion_price_id, :integer
  end
end
