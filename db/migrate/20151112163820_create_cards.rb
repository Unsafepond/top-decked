class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
    	t.string :name
    	t.string :mana_cost
    	t.text :colors, array: true, default: []
    	t.string :rarity
    	t.string :card_type
    	t.string :set
    	t.string :image_url

      t.timestamps null: false
    end
  end
end
