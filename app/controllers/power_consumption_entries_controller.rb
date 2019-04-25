class PowerConsumptionEntriesController < ApplicationController
  require 'csv'
  def create
    begin
      PowerConsumptionEntry.import(params[:file])
      redirect_to power_consumption_entries_path, notice: "Upload Successful"
    rescue => e
      puts "Received the following error #{e}"

      redirect_to power_consumption_entries_path, notice: "Upload Failure. Invalid CSV Format."
    end
  end

  def index
    @power_consumption_entries = PowerConsumptionEntry.order("interval_time asc")

  end




end
