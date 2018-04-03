Rails.application.routes.draw do
  get 'tasks/all'

  get 'tasks/find'

  get 'tasks/add'

  get 'tasks/edit'

  get 'tasks/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
