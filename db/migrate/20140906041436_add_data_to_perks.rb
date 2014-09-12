class AddDataToPerks < ActiveRecord::Migration
  def change
    add_column :perks, :name, :string
    add_column :perks, :amount, :integer
    add_column :perks, :description, :text
  end
end
