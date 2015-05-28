Rails.application.routes.draw do
  get "/contacts" => 'people#contacts'

  get "/all" => 'people#all'
end
