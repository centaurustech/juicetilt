class AddFundingDurationToCampaigns < ActiveRecord::Migration
  def change
    add_column :campaigns, :funding_duration, :integer
  end
end
