class ChangeDataTypeForWinesAlcohol < ActiveRecord::Migration
  def self.up
    change_table :wines do |t|
      t.change :alcohol, :float
    end
  end
 
  def self.down
    change_table :wines do |t|
      t.change :alcohol, :decimal
    end
  end
end