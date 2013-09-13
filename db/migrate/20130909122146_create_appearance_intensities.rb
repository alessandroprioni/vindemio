class CreateAppearanceIntensities < ActiveRecord::Migration
  def change
    create_table :appearance_intensities do |t|
      t.string :name

      t.timestamps
    end
  end
end
