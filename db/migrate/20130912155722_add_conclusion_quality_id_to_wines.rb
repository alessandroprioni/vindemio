class AddConclusionQualityIdToWines < ActiveRecord::Migration
  def change
    add_column :wines, :conclusion_quality_id, :integer
  end
end
