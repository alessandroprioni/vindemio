class ChangeDataTypeForWinesPrice < ActiveRecord::Migration
  def self.up
    change_table :wines do |t|
      t.change :price, :float
    end
  end
 
  def self.down
    change_table :wines do |t|
      t.change :price, :decimal
    end
  end
end