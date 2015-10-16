class Api::V1::PoolsController < ApplicationController

  def show
    result = Pool.find(params[:id])

    @languages = result.pool_languages

    # render :json => {success: true,
    #   pool: result.as_json(include: {
    #   interpreters: {},
    #   })}, :status => :ok


    render :json => {success: true,
      pool: result.as_json(include: {
      interpreters: {},
      }), message: @languages}, :status => :ok


  end



  def index
    results = Pool.all

    render :json => {success: true,
      pools: results.as_json(include: {
        interpreters: {}
        })}, status: :ok
  end

  def create
    @requester = Pool.create(pool_params)
    if @pool.save
      render json: {success: true, id: @pool.id}, status: :ok
    else
      render json: @pool.errors, status: :unprocessable_entity
    end
  end

  def update
    @pool = Pool.find(params[:id])

    if @requester.update_attributes(pool_params)
      render json: {success: true}, status: :ok
    else
      render json: @pool.errors, status: :unprocessable_entity
    end

  end

  def destroy
    @requester = Pool.find(params[:id])
    if @pool.destroy
      render json: {success: true}, status: :ok
    else
      render json: @pool.errors, status: :unprocessable_entity
    end
  end

  private

    def pool_params
      params.require(:pool).permit(:name, :staff, interpreter_ids: [])
    end

end
