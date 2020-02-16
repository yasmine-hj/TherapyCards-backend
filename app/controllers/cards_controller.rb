class CardsController < ApplicationController
 

  # GET /cards
  def index
    if !!params[:subject_id]
      @cards = Card.where(topic_id: params[:topic_id])
      render json: @cards
    else
      @cards = Card.all
      render json: @cards
    end
  end

  # GET /cards/1
  def show
    @card = Card.find(params[:id])
    render json: @card
  end

  # POST /cards
  def create
     @card = Card.create(card_params)
     render json: @card
  end

  # PATCH/PUT /cards/1
  def update
    @card = Card.find(params[:id])
    @card.update(card_params)
    render json: @card
  end

  # DELETE /cards/1
  def destroy
    @card = Card.find(params[:id])
    @card.delete
    render json: {cardID: @card.id}
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    # def set_card
    #   @card = Card.find(params[:id])
    # end

    # Only allow a trusted parameter "white list" through.
    def card_params
      params.require(:card).permit(:question, :topic_id, :topic, :name)
    end
end
