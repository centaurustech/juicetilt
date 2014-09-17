class RemoveBirthdayFromCampaigns < ActiveRecord::Migration
  def change
    remove_column :campaigns, :birthday, :date
  end
end
