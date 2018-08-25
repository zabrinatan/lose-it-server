json.users @users do |e|
  json.id e.id
  json.first_name e.first_name
  json.last_name e.last_name
  json.weight e.weight
  json.height e.height
  json.password_digest e.password_digest


end
