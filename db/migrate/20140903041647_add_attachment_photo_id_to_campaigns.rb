class AddAttachmentPhotoIdToCampaigns < ActiveRecord::Migration
  def self.up
    change_table :campaigns do |t|
      t.attachment :photo_id
    end
  end

  def self.down
    remove_attachment :campaigns, :photo_id
  end
end
