class DecksController < ApplicationController

	def new
    @deck = Deck.new
	end

  def create
    deck = Deck.create(name: params["deck"]["name"], user: current_user)
    redirect_to edit_deck_path(id: deck.id)
  end

  def edit
    @user = current_user
    @cards = Card.all
    @deck = current_user.decks.find(params[:id])
  end

  def update
    @deck = current_user.decks.find(params[:id])
    byebug
    @deck.cards << Card.find(params["deck-id"].to_i)
    render edit_deck_path(id: deck.id)
  end

  def destroy
    if deck = current_user.decks.find(params[:id])
      deck.delete
      redirect_to :back
    else
      redirect_to root_path
    end
  end

end
