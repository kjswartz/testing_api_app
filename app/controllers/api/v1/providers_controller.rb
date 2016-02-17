class Api::V1::ProvidersController < ApplicationController

  def show
  end

  def index
    results = Provider.all

    render :json => {
      success: true,
      provider_list: results.as_json(include: {
        sessions:{only: [:id, :start_time, :duration, :state]},
        jobs:{include: {sessions:{only: [:id, :start_time, :duration, :state]}}}
        })
      },
      :status => :ok
  end

  def create
  end

  def update
  end

  def destroy
  end

  private

    def provider_params
      params.require(:provider).permit(:name)
    end

end
