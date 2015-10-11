class Api::V1::InterpretersController < ApplicationController

  def show
    result = Interpreter.find(params[:id])
    render :json => {success: true, interpreters: result}, :status => :ok
  end

  def index
    results = Interpreter.all

    render :json => {success: true, interpreters: results}, :status => :ok
  end

end
