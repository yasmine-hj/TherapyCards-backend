class TopicsController < ApplicationController

  # GET /topics
  def index
    @topics = Topic.all
    render json: @topics
  end

  # GET /topics/1
  def show
    @topic = Topic.find(params[:id])
    render json: @topic 
  end

#   # POST /topics
  def create
    @topic = Topic.create(topic_params)
    render json: @topic
  end
#   # PATCH/PUT /topics/1
  def update
    @topic = Topic.find(params[:id])
    @topic.update(topic_params)
    render json: @topic
  end

  # DELETE /topics/1
  def destroy
    @topic = Topic.find(params[:id])
    @topic.delete
    render json: {topicID: @topic.id}  
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_topic
      @topic = Topic.find(params[:id])
    end

#     # Only allow a trusted parameter "white list" through.
    def topic_params
      params.require(:topic).permit(:name, :description)
    end
end
