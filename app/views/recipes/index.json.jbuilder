json.array! @recipes do |e|
  json.label e.label
  json.image e.image
  json.url e.url
  json.yield e.yield
  json.totalTime e.totalTime
  json.calories e.calories
  json.user_id e.user_id


end
