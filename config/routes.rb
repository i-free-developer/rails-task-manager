Rails.application.routes.draw do
  root 'tasks#all'

  # read all tasks
  get 'tasks', to: 'tasks#all', as: :tasks


  # create a task and save it
  get '/add', to: 'tasks#add', as: :tasks_add
  post 'tasks', to: 'tasks#create'

  # the display route needs to be after new route
  # read one task
  get '/:id', to: 'tasks#display', as: :display

  # edit a task and save it
  get 'tasks/:id/edit', to: 'tasks#edit', as: :tasks_edit
  patch 'tasks/:id', to: 'tasks#update', as: :task

  #delete a task
  delete ':id', to: 'tasks#destroy', as: :destroy

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
