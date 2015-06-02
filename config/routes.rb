Rails.application.routes.draw do
  get "/contact" => 'people#contact'
  get "/contacts" => 'people#index'
  get "/" => 'people#index'
  get "/contacts/new" => 'people#new'
  post "/contacts" => 'people#create'

end
