json.array!(@players) do |player|
  json.extract! player, :id, :name, :team_id, :article_id, :goals
  json.url player_url(player, format: :json)
end
