class PortsController < ApplicationController
  def index
    @ports = Port.all
    # raise params.inspect
  end

  def show
    @port = Port.find(params[:id])
  end
end
