class PowerConsumptionEntry < ApplicationRecord
  require 'csv'

  def self.import(file)
    CSV.foreach(file.path, headers: true, converters: [->(v) { Time.parse(v) rescue v }]) do |row|
      PowerConsumptionEntry.create! row.to_hash
    end
  end
end
