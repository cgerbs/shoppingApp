json.extract! lineitem, :id, :player_id, :list_id, :created_at, :updated_at
json.url lineitem_url(lineitem, format: :json)
