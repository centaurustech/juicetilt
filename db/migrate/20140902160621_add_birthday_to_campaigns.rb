class AddBirthdayToCampaigns < ActiveRecord::Migration
  def change
    add_column :campaigns, :birthday, :int
  end
end
