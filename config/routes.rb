Rails.application.routes.draw do
  get "/contact" => 'people#contact'
  get "/contacts" => 'people#index'
  get "/" => 'people#index'
  get "/contacts/new" => 'people#new'
  post "/contacts" => 'people#create'
  get "/contacts/:id/edit" => 'people#edit'
  get "/contacts/:id" => 'people#show'
  patch "contacts/:id" => 'people#update'

  delete "contacts/:id" => 'people#destroy'

end
