class AddNoseDevelopmentIdToWines < ActiveRecord::Migration
  def change
    add_column :wines, :nose_development_id, :integer
  end
end
