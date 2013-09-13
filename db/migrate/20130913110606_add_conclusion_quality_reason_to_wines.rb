class AddConclusionQualityReasonToWines < ActiveRecord::Migration
  def change
    add_column :wines, :conclusion_quality_reason, :text
  end
end
