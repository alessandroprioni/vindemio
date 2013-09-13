class CreatePalateTannins < ActiveRecord::Migration
  def change
    create_table :palate_tannins do |t|
      t.string :name

      t.timestamps
    end
  end
end
