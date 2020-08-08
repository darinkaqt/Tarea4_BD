json.extract! person, :id, :name, :lastname, :age, :planet_id, :faction_id, :created_at, :updated_at
json.url person_url(person, format: :json)
