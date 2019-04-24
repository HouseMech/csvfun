class PowerConsumptionEntriesController < ApplicationController
  def new
  end

  def create  
  end



  @power_consumption_entries = PowerConsumptionEntry.order("interval_time asc")
end
