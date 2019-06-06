Rails.application.routes.draw do
  
  get '/', to: 'saps#show'

  get '/translate', to: 'translations#show'

end


