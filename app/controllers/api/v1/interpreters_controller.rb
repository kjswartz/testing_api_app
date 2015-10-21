class Api::V1::InterpretersController < ApplicationController

  def show
    result = Interpreter.find(params[:id])
    render :json => {success: true, interpreters: result}, :status => :ok
  end

  def index
    results = Interpreter.all

    render :json => {success: true, interpreters: results}, :status => :ok
  end

  def create
    @interpreter = Interpreter.create(interpreter_params)
    if @interpreter.save
      render json: {success: true, interpreter: @interpreter}, status: :ok
    else
      render json: @interpreter.errors, status: :unprocessable_entity
    end
  end

  def update
    @interpreter = Interpreter.find(params[:id])

    if @interpreter.update_attributes(interpreter_params)
      render json: {success: true}, status: :ok
    else
      render json: @interpreter.errors, status: :unprocessable_entity
    end

  end

  def destroy
    @interpreter = Interpreter.find(params[:id])
    if @interpreter.destroy
      render json: {success: true}, status: :ok
    else
      render json: @interpreter.errors, status: :unprocessable_entity
    end
  end

  private

    def interpreter_params
      params.require(:interpreter).permit(:first_name, :last_name, :username, :language,
                                        :staff, :status, :credentials,
                                        :specilities, :licenses, :gender, :vaccines, :email,
                                        :address, :email, :city, :state, :zip, :verified,
                                        :profile)
    end

end
