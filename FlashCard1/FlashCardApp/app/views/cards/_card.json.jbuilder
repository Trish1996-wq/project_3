json.extract! card, :id, :question, :answer, :deck_id, :created_at, :updated_at
json.url card_url(card, format: :json)
