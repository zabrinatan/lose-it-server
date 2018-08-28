json.array! @recipes do |e|
  json.id e.id
  json.label e.label
  json.image e.image
  json.url e.url
  json.yield e.yield
  json.totalTime e.totalTime
  json.calories e.calories
  json.user_id e.user_id
  json.ingredients e.ingredients

end
