class CreatePalateFlavintensities < ActiveRecord::Migration
  def change
    create_table :palate_flavintensities do |t|
      t.string :name

      t.timestamps
    end
  end
end
