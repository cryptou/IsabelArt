class AddDynastyToProduct < ActiveRecord::Migration
  def change
    add_column :products, :dynasty_id, :integer

  end
end
