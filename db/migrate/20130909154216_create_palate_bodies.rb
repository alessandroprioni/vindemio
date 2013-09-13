class CreatePalateBodies < ActiveRecord::Migration
  def change
    create_table :palate_bodies do |t|
      t.string :name

      t.timestamps
    end
  end
end
