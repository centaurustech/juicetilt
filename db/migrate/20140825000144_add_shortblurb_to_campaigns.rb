class AddShortblurbToCampaigns < ActiveRecord::Migration
  def change
    add_column :campaigns, :shortblurb, :text
    add_index :campaigns, :shortblurb
  end
end
