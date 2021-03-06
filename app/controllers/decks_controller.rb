class DecksController < ApplicationController

  def index
    @decks = Deck.all
  end

  def show
    deck = Deck.find(params[:id])
    if deck.user == current_user
      redirect_to edit_deck_path(deck.id)
    else
      new_deck = Deck.create(name: deck.name)
      deck.cards.each { |card| new_deck.cards << card }
      redirect_to edit_deck_path(new_deck.id)
    end
  end

	def new
    @deck = Deck.new
	end

  def create
    deck = Deck.create(name: params["deck"]["name"], user: current_user)
    redirect_to edit_deck_path(id: deck.id)
  end

  def edit
    @cards = Card.all
    @deck = current_user.decks.find(params[:id])
    deck_hasher = DeckHasher.new(@deck.cards)
    @deck_cards = deck_hasher.cards
    @card_count = deck_hasher.count
  end

  def update
    @deck = current_user.decks.find(params[:id])
    if params["commit"] == "Add to Deck"
      @deck.cards << Card.find(params["card-id"].to_i)
    else
      @deck.deck_cards.where(card_id: params["card-id"].to_i).first.delete
    end
    redirect_to :back
  end

  def destroy
    if deck = current_user.decks.find(params[:id])
      deck.destroy
      redirect_to :back
    else
      redirect_to root_path
    end
  end

end
