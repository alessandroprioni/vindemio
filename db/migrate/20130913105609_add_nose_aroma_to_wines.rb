class AddNoseAromaToWines < ActiveRecord::Migration
  def change
    add_column :wines, :nose_aroma, :text
  end
end
