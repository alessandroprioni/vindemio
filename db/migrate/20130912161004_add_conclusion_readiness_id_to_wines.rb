class AddConclusionReadinessIdToWines < ActiveRecord::Migration
  def change
    add_column :wines, :conclusion_readiness_id, :integer
  end
end
