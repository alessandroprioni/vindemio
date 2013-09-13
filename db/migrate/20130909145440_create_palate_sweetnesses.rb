class CreatePalateSweetnesses < ActiveRecord::Migration
  def change
    create_table :palate_sweetnesses do |t|
      t.string :name

      t.timestamps
    end
  end
end
