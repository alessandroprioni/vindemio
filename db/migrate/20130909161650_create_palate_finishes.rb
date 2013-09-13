class CreatePalateFinishes < ActiveRecord::Migration
  def change
    create_table :palate_finishes do |t|
      t.string :name

      t.timestamps
    end
  end
end
