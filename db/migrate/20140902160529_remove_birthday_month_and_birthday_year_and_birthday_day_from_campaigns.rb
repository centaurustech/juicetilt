class RemoveBirthdayMonthAndBirthdayYearAndBirthdayDayFromCampaigns < ActiveRecord::Migration
  def change
    remove_column :campaigns, :birthday_month, :int
    remove_column :campaigns, :birthday_year, :int
    remove_column :campaigns, :birthday_day, :int
  end
end
