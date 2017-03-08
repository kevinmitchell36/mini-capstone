Rails.application.routes.draw do
  get "/bat_one_url" => "products#bat_one_method"
  get "/bat_two_url" => "products#bat_two_method"
  get "/bat_three_url" => "products#bat_three_method"
end
