class AddAppearanceClarityIdToWines < ActiveRecord::Migration
  def change
    add_column :wines, :appearance_clarity_id, :integer
  end
end
