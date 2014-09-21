class AddDataToPerks < ActiveRecord::Migration
  def change
    add_column :perks, :amount, :decimal
    add_column :perks, :number_available, :integer
    add_column :perks, :description, :text
  end
end
