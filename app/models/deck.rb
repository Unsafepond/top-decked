class Deck < ActiveRecord::Base
  belongs_to :user, foreign_key: "user_id"
  has_many :deck_cards, :dependent => :delete_all
  has_many :cards, through: :deck_cards
end
