class AddProjectTitleToCampaigns < ActiveRecord::Migration
  def change
    add_column :campaigns, :project_title, :string
  end
end
