class MovementsController < ApplicationController
  load_resource :client
  load_resource through: :client, shallow: true

  def index
    @movements = @movements.includes(:client)
    render json: @movements, status: :ok
  end

  def latest
    @movements = @movements.limit(5)
    render json: @movements, status: :ok
  end

  def show
    render_movement
  end

  def create
    @movement = @client.movements.build movement_params
    @movement.save!
    render_movement :created
  end

  def update
    @movement.update! movement_params
    render_movement
  end

  def destroy
    @movement.destroy
    head 204
  end

  private

    def movement_params
      params.require(:movement).permit(:name, :ammount, :client_id)
    end

    def render_movement(status = :ok)
      render json: @movement, status: status, location: @movement
    end

end
