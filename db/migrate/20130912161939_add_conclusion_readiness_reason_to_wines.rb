class AddConclusionReadinessReasonToWines < ActiveRecord::Migration
  def change
    add_column :wines, :conclusion_readiness_reason, :text
  end
end
