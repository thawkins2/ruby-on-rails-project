json.extract! user_bet, :id, :bet_id, :user_selection, :user_id, :amount_bet, :created_at, :updated_at
json.url user_bet_url(user_bet, format: :json)
