class AddConclusionDetailsToWines < ActiveRecord::Migration
  def change
    add_column :wines, :conclusion_details, :text
  end
end
