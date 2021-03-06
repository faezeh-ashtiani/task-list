Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'tasks#index'

  resources :tasks
  # get '/tasks', to: 'tasks#index', as: 'tasks'
  # get '/tasks/new', to: 'tasks#new', as: 'new_task' # gets a form for a new task
  # post '/tasks', to: 'tasks#create' #  submits the form to post a new task

  # get '/tasks/:id', to: 'tasks#show', as: 'task'
  # get '/tasks/:id/edit', to: 'tasks#edit', as: 'edit_task' # Brings up the form to edit a task
  # patch '/tasks/:id', to: 'tasks#update'
  # delete '/tasks/:id', to: 'tasks#destroy'

  patch '/tasks/:id/complete', to: 'tasks#complete', as: 'complete_task'
end
