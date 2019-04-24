class GraphsController < ApplicationController
  def new
  end

  @power_consumption_entries = PowerConsumptionEntry.order("interval_time asc")
end
