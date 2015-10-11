class Api::V1::RequestersController < ApplicationController

  def show
    result = Requester.find(params[:id])
    render :json => {success: true, requester: result}, :status => :ok
  end

  def index
    results = Requester.all

    render :json => {success: true, requesters: results}, status: :ok
  end

  def create
    @requester = Requester.create(requester_params)
    if @requester.save
      render json: {success: true, id: @requester.id}, status: :ok
    else
      render json: @requester.errors, status: :unprocessable_entity
    end
  end

  def update
    @requester = Requester.find(params[:id])

    if @requester.update_attributes(requester_params)
      render json: {success: true}, status: :ok
    else
      render json: @requester.errors, status: :unprocessable_entity
    end

  end

  def destroy
    @requester = Requester.find(params[:id])
    @requester.destroy
    head :no_content
  end

  private

    def requester_params
      params.require(:requester).permit(:first_name, :last_name, :username, :password,
                                        :department_code, :department, :meeting_place,
                                        :permission, :status, :centralized)
    end

end
