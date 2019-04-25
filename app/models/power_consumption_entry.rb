class PowerConsumptionEntry < ApplicationRecord
  require 'csv'

  def self.import(file)
    PowerConsumptionEntry.delete_all

    CSV.foreach(file.path, headers: true) do |row|
        PowerConsumptionEntry.create!({
        account_number: row['Account Number'].to_s,
        interval_time: Time.parse(row['Interval Start Date/Time']),
        net_consumption: (if row['Net Consumption (kWh)'] != "N/A" then
          BigDecimal(row['Net Consumption (kWh)'])
        else
          0
        end)
      })
    end
  end
end
