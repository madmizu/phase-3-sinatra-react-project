class CreateSpoilDates < ActiveRecord::Migration[6.1]
  def change
    create_table :spoil_dates do |m|
      m.date :spoil_date
    end
  end
end
