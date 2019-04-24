class PowerConsumptionEntriesController < ApplicationController


  def create
    # byebug

    redirect_to power_consumption_entries_path, notice: "Upload Successfull"
  end

  def import
    PowerConsumptionEntry.import(params[:file])
    # redirect_to root_url, notice "Data imported."
  end

  def index
    @power_consumption_entries = PowerConsumptionEntry.order("interval_time asc")
  end
end
