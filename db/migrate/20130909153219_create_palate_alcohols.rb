class CreatePalateAlcohols < ActiveRecord::Migration
  def change
    create_table :palate_alcohols do |t|
      t.string :name

      t.timestamps
    end
  end
end
