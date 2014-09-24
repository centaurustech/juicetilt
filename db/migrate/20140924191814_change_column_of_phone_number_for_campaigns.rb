class ChangeColumnOfPhoneNumberForCampaigns < ActiveRecord::Migration
  def change
  	change_column :campaigns, :phone_number, :integer, :limit => 8
  end
end
