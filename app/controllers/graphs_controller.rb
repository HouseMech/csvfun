class GraphsController < ApplicationController
  def new
  end

  def create
    graph = Graph.create!(graph_params)
    redirect_to root_path
  end

  private
    def graph_params
      params.require(:Graph).permit(:graphFile)
    end
end

  @power_consumption_entries = PowerConsumptionEntry.order("interval_time asc")
end
