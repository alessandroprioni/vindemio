class CreateConclusionReadinesses < ActiveRecord::Migration
  def change
    create_table :conclusion_readinesses do |t|
      t.string :name

      t.timestamps
    end
  end
end
