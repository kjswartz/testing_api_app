class Api::V1::EscalationsController < ApplicationController

  def show
    result = Escalation.find(params[:id])

    render json:
    {
      success: true,
      escalation: result.as_json(include: {escalation_pools: {} }),
    },
      status: :ok
  end

  def index
    results = Escalation.all
    render json:
    {
      success: true,
      escalations: results.as_json(include:
      {
        pools: {},
      }),
    },
      status: :ok
  end

  def create
    @escalation = Escalation.create(escalation_params)
    if @escalation.save
      render json: {success: true, id: @escalation.id}, status: :ok
    else
      render json: @escalation.errors, status: :unprocessable_entity
    end
  end

  def update
    @escalation = Escalation.find(params[:id])

    if @escalation.update_attributes(escalation_params)
      render json: {success: true}, status: :ok
    else
      render json: @escalation.errors, status: :unprocessable_entity
    end

  end

  def destroy
    @escalation = Escalation.find(params[:id])
    if @escalation.destroy
      render json: {success: true}, status: :ok
    else
      render json: @escalation.errors, status: :unprocessable_entity
    end
  end

  private

    def escalation_params
      params.require(:escalation).permit(:name, :default, :response_time, :escalation_pools)
    end

end
