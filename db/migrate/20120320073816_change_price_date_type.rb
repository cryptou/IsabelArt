class ChangePriceDateType < ActiveRecord::Migration
  def up
    change_column :products, :price, :integer
  end

  def down
    change_column :products, :price, :decimal
  end
end
