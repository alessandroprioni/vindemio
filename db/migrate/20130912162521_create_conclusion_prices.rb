class CreateConclusionPrices < ActiveRecord::Migration
  def change
    create_table :conclusion_prices do |t|
      t.string :name

      t.timestamps
    end
  end
end
