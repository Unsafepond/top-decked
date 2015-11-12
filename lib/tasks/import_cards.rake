require "http"

namespace :update_database do
	task :cards => :environment do
		1.upto(1471) do |i|
			text = HTTP.get("http://api.mtgapi.com/v2/cards?page=#{i}")
			parsed = JSON.parse(text.to_s)
			parsed["cards"].each do |card|
				Card.save_from_mtg_api(card)
			end
		end
	end
end