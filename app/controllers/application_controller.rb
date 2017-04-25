class ApplicationController < ActionController::API
  include CanCan::ControllerAdditions

  rescue_from ActiveRecord::RecordInvalid, with: :record_invalid

  def current_user
  end

  protected

    def record_invalid(e)
      render json: e.record.errors, status: :unprocessable_entity
    end

end
