Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # Read all tasks
  get "tasks", to: "tasks#index"

  # add task
  get "tasks/new", to: "tasks#new" , as: :new_task
  # See one task
  get "tasks/:id", to: "tasks#show", as: :task
  post "tasks", to: "tasks#create"
  # Edit task
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  patch "tasks/:id", to: "tasks#update"
  # delete task
  # get "tasks/:id/destroy", to: "tasks#destroy", as: :destroy_task
  delete "tasks/:id", to: "tasks#destroy"

end
