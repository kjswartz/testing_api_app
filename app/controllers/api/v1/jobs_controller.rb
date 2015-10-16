class Api::V1::JobsController < ApplicationController

  def show
    job = Job.find(params[:id])
    job_json = job.as_json
    job_json['interpreter'] = job.interpreter
    job_json['requester'] = job.requester
    render json: {
      success: true,
      job: job_json
      },
      status: :ok
  end

  def index
    results = Job.all

    render json: {success: true,
      jobs: results.as_json(include: {
        interpreter: {},
        requester: {}
        })
      },
      status: :ok
  end

  def create
    @job = Job.create(job_params)
    if @job.save
      render json: {success: true, id: @job.id}, status: :ok
    else
      render json: @job.errors, status: :unprocessable_entity
    end
  end

  def update
    @job = Job.find(params[:id])

    if @job.update_attributes(job_params)
      render json: {success: true}, status: :ok
    else
      render json: @job.errors, status: :unprocessable_entity
    end

  end

  def destroy
    @job = Job.find(params[:id])
    if @job.destroy
      render json: {success: true}, status: :ok
    else
      render json: @job.errors, status: :unprocessable_entity
    end
  end

  private

    def job_params
      params.require(:job).permit(:name, :request_date, :status, :request_wait, :provider_total,
                                  :provider_list, :requester_id, :language, :interpreter_id)
    end


end
