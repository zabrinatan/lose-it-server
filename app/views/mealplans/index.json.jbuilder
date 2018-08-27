json.array! @mealplans do |e|
  json.user_id e.user_id
  json.day e.day
  json.recipe e.recipe
  json.meal e.meal

end
