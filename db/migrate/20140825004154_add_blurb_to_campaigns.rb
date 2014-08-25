class AddBlurbToCampaigns < ActiveRecord::Migration
  def change
    add_column :campaigns, :blurb, :text
  end
end
