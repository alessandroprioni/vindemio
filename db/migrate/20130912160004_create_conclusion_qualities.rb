class CreateConclusionQualities < ActiveRecord::Migration
  def change
    create_table :conclusion_qualities do |t|
      t.string :name

      t.timestamps
    end
  end
end
