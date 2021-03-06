Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
  namespace :api do 
    get '/contact' => 'contacts#index'
    get '/contact/:id' => 'contacts#show'
    post '/contact' => 'contacts#create'
    patch '/contact/:id' => 'contacts#update'
    delete '/contact/:id' => 'contacts#destroy'
  end
end
