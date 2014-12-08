json.array!(@teams) do |team|
  json.extract! team, :id, :name, :article_id, :wins, :loses
  json.url team_url(team, format: :json)
end
