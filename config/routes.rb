Rails.application.routes.draw do
#  resources :songs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#hello_world'
  get '/api/songs/list' , to: 'api/songs#list'
  get '/api/songs/:songtitle' , to: 'api/songs#show'
  get '/songs/list' , to: 'songs#list'
  get '/songs/:songtitle' , to: 'songs#view'
end
