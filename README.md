# README

```
HOW TO GET STARTED
1. CLONE REPO

2. RUN bundle

3. THEN RUN rails s
```
Rails Backend

-React will make a request to rails once an image is uploaded. 

-Rails will then make the call to the Sap API and return a blob.

-When the translate button has been clicked, react will then make the request to rails.

-Rails makes the call to the Google translate API and pass in th blob, returning the translated text.


Routes

  -post '/extracttext', to: 'saps#create'
  
  -get '/translate', to: 'translations#show'
