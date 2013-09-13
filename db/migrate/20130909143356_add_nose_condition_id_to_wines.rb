class AddNoseConditionIdToWines < ActiveRecord::Migration
  def change
    add_column :wines, :nose_condition_id, :integer
  end
end
