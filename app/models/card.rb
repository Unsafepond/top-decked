class Card < ActiveRecord::Base
	has_many :deck_cards
	has_many :decks, through: :deck_cards
	validates :name, uniqueness: true

	def self.save_from_mtg_api(card)
		Card.create(
			name: card["name"],
			mana_cost: card["manaCost"],
			colors: card["colors"],
			rarity: card["rarity"],
			card_type: card["type"],
			set: card["set"],
			image_url: card["images"]["gatherer"],
			card_text: card["text"]
			)
	end

end
