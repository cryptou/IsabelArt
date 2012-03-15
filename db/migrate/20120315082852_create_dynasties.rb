class CreateDynasties < ActiveRecord::Migration
  def up
    create_table :dynasties do |t|
      t.date :date_starts
      t.date :date_ends

      t.timestamps
    end
    Dynasty.create_translation_table! :name => :string, :description => :text
  end

  def down
    drop_table :dynasties
    Dynast.drop_translation_table!
  end
end
