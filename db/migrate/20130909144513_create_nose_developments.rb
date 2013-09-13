class CreateNoseDevelopments < ActiveRecord::Migration
  def change
    create_table :nose_developments do |t|
      t.string :name

      t.timestamps
    end
  end
end
