class AddAttachmentCheckScanToCampaigns < ActiveRecord::Migration
  def self.up
    change_table :campaigns do |t|
      t.attachment :check_scan
    end
  end

  def self.down
    remove_attachment :campaigns, :check_scan
  end
end
