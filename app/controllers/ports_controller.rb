class PortsController < ApplicationController
  def index
    @ports = Port.all
    @canada = @ports.canada
    @mexico = @ports.mexico
    # raise params.inspect
  end

  def show
    @port = Port.find(params[:id])
    @status = @port.statuses.last
  end
end
