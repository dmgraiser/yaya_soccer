json.array!(@articles) do |article|
  json.extract! article, :id, :publishable, :video, :part1, :quiz1, :q1answer, :q1wrong1, :q1wrong2, :part2, :quiz2, :q2answer, :q2wrong1, :q2wrong2, :part3, :quiz3, :q3answer, :q3wrong1, :q3wrong2
  json.url article_url(article, format: :json)
end
