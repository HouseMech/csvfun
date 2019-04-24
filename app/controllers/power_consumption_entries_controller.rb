class PowerConsumptionEntriesController < ApplicationController
  def import
    PowerConsumptionEntry.import(params[:file])
    redirect_to root_url, notice "Data imported."
  end

  def create
  end

  def index
    @power_consumption_entries = PowerConsumptionEntry.order("interval_time asc")
  end
end
