class CreatePalateAcidities < ActiveRecord::Migration
  def change
    create_table :palate_acidities do |t|
      t.string :name

      t.timestamps
    end
  end
end
