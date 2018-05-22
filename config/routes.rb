Rails.application.routes.draw do
  resources :tasks
  get '/admin' => 'tasks#admin'
  get '/ops' => 'tasks#ops'
  get '/maint' => 'tasks#maint'
  put '/done/:id' => 'tasks#done'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
