json.extract! body_map, :id, :ref, :created_at, :updated_at
json.url body_map_url(body_map, format: :json)
