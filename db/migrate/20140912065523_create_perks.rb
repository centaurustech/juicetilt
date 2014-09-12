class CreatePerks < ActiveRecord::Migration
  def change
    create_table :perks do |t|
      t.string :name
    end
  end
end
