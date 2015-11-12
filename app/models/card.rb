class Card < ActiveRecord::Base

	def self.save_from_mtg_api(card)
		Card.create(
			name: card["name"],
			mana_cost: card["manaCost"],
			colors: card["colors"],
			rarity: card["rarity"],
			card_type: card["type"],
			set: card["set"],
			image_url: card["images"]["gatherer"]
			)
	end

end
