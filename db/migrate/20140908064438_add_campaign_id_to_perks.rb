class AddCampaignIdToPerks < ActiveRecord::Migration
  def change
    add_column :perks, :campaign_id, :integer
  end
end
