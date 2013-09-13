class CreateNoseIntensities < ActiveRecord::Migration
  def change
    create_table :nose_intensities do |t|
      t.string :name

      t.timestamps
    end
  end
end
