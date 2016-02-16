class Api::V1::CalendarJobsController < ApplicationController

  def show
  end

  def index
    results = CalendarJob.all

    render :json => {
      success: true,
      job_list: results.as_json(include: {
        sessions:{only: :id, :start_time, :duration, :state},
        providers:{only: :id, :name}
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

    def calendar_job_params
      params.require(:calendar_job).permit(:name, :attrib_list)
    end

end
