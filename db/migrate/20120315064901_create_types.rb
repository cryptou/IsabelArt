class CreateTypes < ActiveRecord::Migration
  def up
    create_table :types do |t|

      t.timestamps
    end
    Type.create_translation_table!  :title => :string, :description => :text
  end

  def down
    drop_table :types
    Type.drop_translation_table!
  end
end
