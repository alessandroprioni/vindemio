class CreateWines < ActiveRecord::Migration
  def change
    create_table :wines do |t|
      t.integer :user_id
      t.string :name
      t.integer :vintage
      t.string :grapes
      t.decimal :alcohol
      t.string :producer
      t.integer :country_id
      t.string :region
      t.integer :temperature
      t.decimal :price

      t.timestamps
    end
    add index :wines, [:user_id, :created_at]
  end
end
