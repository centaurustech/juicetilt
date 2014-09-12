class AddCampaignIdToCampaigns < ActiveRecord::Migration
  def change
    add_column :campaigns, :campaign_id, :integer
  end
end
