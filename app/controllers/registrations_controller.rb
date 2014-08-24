class RegistrationsController < ApplicationController

  def index

    @registration = Registration.new

  end

  def create
    logger.warn "Create"
    @registration = Registration.new(registration_params)
    # @registration.save
    logger.warn "Create more"
    # redirect_to registrations_url

    respond_to do |format|
      if @registration.save
        pr "Lagret"
        format.json { render json: { success: true } }
      else
        pr "feilet #{@registration.errors.inspect}"
        format.json { render json: { error: @registration.errors }, status: 400 }
      end
    end

  end

  def registration_params
    params.require(:registration).permit(:name, :company, :phone, :email)
  end


end
