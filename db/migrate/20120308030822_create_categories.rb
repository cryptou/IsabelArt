class CreateCategories < ActiveRecord::Migration
  def up
    create_table :categories do |t|
      t.timestamps
    end
    Category.create_translation_table! :title => :string, :description => :text
  end

  def down
  	drop_table :categories
  	Category.drop_translation_table!
  end
end