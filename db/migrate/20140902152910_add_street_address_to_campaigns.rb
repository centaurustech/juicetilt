class AddStreetAddressToCampaigns < ActiveRecord::Migration
  def change
    add_column :campaigns, :street_address, :string
  end
end
