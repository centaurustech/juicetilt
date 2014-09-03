class ChangeBirthdayDataTypeForCampaign < ActiveRecord::Migration
  def self.up
    change_table :campaigns do |t|
      t.change :birthday, :date
    end
  end

  def self.down
    change_table :campaigns do |t|
      t.attachment :birthday, :integer
  end
end
end

