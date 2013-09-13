class CreateAppearanceClarities < ActiveRecord::Migration
  def change
    create_table :appearance_clarities do |t|
      t.string :name

      t.timestamps
    end
  end
end
