class AddBirthdayMonthAndBirthdayDayAndBirthdayYearToCampaigns < ActiveRecord::Migration
  def change
    add_column :campaigns, :birthday_month, :int
    add_column :campaigns, :birthday_day, :int
    add_column :campaigns, :birthday_year, :int
  end
end
