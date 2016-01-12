class AddCardTextToCard < ActiveRecord::Migration
  def change
    add_column :cards, :card_text, :string
  end
end
