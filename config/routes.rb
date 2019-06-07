Rails.application.routes.draw do
  post '/extracttext', to: 'saps#create'
  get '/translate', to: 'translations#show'
end


