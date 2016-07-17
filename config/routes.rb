Rails.application.routes.draw do
  root 'url#home'
  post '/dealwith' => 'url#dealwith'
  get '/oops' => 'url#invalid'
  get ':id' => 'url#shortened'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
