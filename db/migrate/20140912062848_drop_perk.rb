class DropPerk < ActiveRecord::Migration
  def up
    drop_table :perk
  end

  def down
    create_table :perk do |t|
     

      t.timestamps        
    end
    add_index :perks, :anothertable_id
  end
end
