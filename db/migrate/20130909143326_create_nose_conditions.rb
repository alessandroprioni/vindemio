class CreateNoseConditions < ActiveRecord::Migration
  def change
    create_table :nose_conditions do |t|
      t.string :name

      t.timestamps
    end
  end
end
