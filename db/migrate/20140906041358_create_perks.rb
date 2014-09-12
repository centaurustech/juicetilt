class CreatePerks < ActiveRecord::Migration
  def change
    create_table :perks do |t|

      t.timestamps
    end
  end
end
