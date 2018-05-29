Rails.application.routes.draw do
  resources :tasks
  get '/admin' => 'tasks#admin'
  get '/ops' => 'tasks#ops'
  get '/maint' => 'tasks#maint'
  put '/done/:id' => 'tasks#done'
  patch '/edit_notes/:id' => 'tasks#edit_notes'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
