class AddPhoneNumberToCampaigns < ActiveRecord::Migration
  def change
    add_column :campaigns, :phone_number, :int
  end
end
