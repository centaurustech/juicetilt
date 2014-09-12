class RemoveCampaignIdFromCampaigns < ActiveRecord::Migration
   def up
    remove_column :campaigns, :campaign_id
  end

  def down
    add_column :campaigns, :campaign_id, :integer
  end
end
