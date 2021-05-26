json.extract! horse, :id, :nome, :sesso, :descrizione, :età, :created_at, :updated_at
json.url horse_url(horse, format: :json)
