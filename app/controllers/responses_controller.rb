class ResponsesController < ApplicationController

  # GET /responses
  def index
    @responses = Response.all
    render json: @responses
  end

  # GET /responses/1
  def show
    @response = Response.find(params[:id])
    render json: @response
  end

  # POST /responses
  def create
    @response = Response.create(response_params)
    render json: @response
  end

  # PATCH/PUT /responses/1
  def update
    @response = Response.find(params[:id])
    @response.update(response_params)
    render json: @response
  end

  # DELETE /responses/1
  def destroy
    @response = Response.find(params[:id])
    @response.destroy
    render json: {responseId: @response.id}
  end

  private
    def response_params
      params.require(:response).permit(:response, :card_id)
    end
end
