class AddLegalFirstNameAndLegalLastNameToCampaigns < ActiveRecord::Migration
  def change
    add_column :campaigns, :legal_last_name, :string
    add_column :campaigns, :legal_first_name, :string
  end
end
