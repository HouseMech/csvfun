class PowerConsumptionEntry < ApplicationRecord
  require 'csv'

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      
    end
  end
end
