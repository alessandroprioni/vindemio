class AddConclusionQualityReasonToWines < ActiveRecord::Migration
  def change
    add_column :wines, :quality_reason, :text
  end
end
