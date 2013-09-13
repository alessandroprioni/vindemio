class AddPalateFlavcharToWines < ActiveRecord::Migration
  def change
    add_column :wines, :palate_flavchar, :text
  end
end
