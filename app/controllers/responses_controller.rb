class ResponsesController < ApplicationController
  before_action :set_response, only: [:show, :update, :destroy]
  # before_action :authenticate

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
    @response = Response.create(params[:id])
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
    @response.delete
    render json: {responseID: @response.id}
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_response
      @response = Response.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def response_params
      params.require(:response).permit(:response, :datetime, :card_id, :user_id, :topic_id)
    end
end
