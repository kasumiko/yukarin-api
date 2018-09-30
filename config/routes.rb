Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#index'
  get '/api/albums/list' , to: 'api/songs#album_list'
  get '/songs/list' , to: 'songs#list'
  get '/songs/:songtitle' , to: 'songs#view'
  post '/songs/search' , to: 'songs#search'
  get '/artists/:type/:name' , to: 'songs#artist_view'

  #API
  get '/api/songs/list' , to: 'api/songs#list'
  get '/api/songs/:songtitle' , to: 'api/songs#show'
  get '/api/songs/search/:keyword' , to: 'api/songs#search'

  get '/api/lyrists/list' , to: 'api/songs#lyrists'
  get '/api/lyrists/:lyrist' , to: 'api/songs#lyrist_show'
  get '/api/composers/list' , to: 'api/songs#composers'
  get '/api/composers/:composer' , to: 'api/songs#composer_show'
  get '/api/arrangers/list' , to: 'api/songs#arrangers'
  get '/api/arrangers/:arranger' , to: 'api/songs#arranger_show'


end
