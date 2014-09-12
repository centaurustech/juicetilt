class AddVideoUrlHtmlToCampaigns < ActiveRecord::Migration
  def change
    add_column :campaigns, :video_url_html, :string
  end
end
