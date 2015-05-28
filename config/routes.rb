Rails.application.routes.draw do
  get "/contacts" => 'people#contacts'
end
