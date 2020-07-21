json.extract! player, :id, :name, :description, :image, :rating, :created_at, :updated_at
json.url player_url(player, format: :json)
