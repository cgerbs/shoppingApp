class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :name
      t.text :description
      t.string :image
      t.decimal :rating

      t.timestamps
    end
  end
end
