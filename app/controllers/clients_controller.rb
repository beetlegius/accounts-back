class ClientsController < ApplicationController
  load_resource

  def index
    @clients = @clients.includes(:movements)
    render json: @clients, status: :ok
  end

  def show
    render_client
  end

  def create
    @client = Client.new client_params
    @client.save!
    render_client :created
  end

  def update
    @client.update! client_params
    render_client
  end

  def destroy
    @client.destroy
    head 204
  end

  private

    def client_params
      params.require(:client).permit(:name, :movements_count)
    end

    def render_client(status = :ok)
      render json: @client, status: status, location: @client
    end
end
