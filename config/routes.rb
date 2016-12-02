Rails.application.routes.draw do
  # Routes for the List resource:
  # CREATE
  get "/lists/new", :controller => "lists", :action => "new"
  post "/create_list", :controller => "lists", :action => "create"

  # READ
  get "/lists", :controller => "lists", :action => "index"
  get "/lists/:id", :controller => "lists", :action => "show"

  # UPDATE
  get "/lists/:id/edit", :controller => "lists", :action => "edit"
  post "/update_list/:id", :controller => "lists", :action => "update"

  # DELETE
  get "/delete_list/:id", :controller => "lists", :action => "destroy"
  #------------------------------

  # Routes for the Note resource:
  # CREATE
  get "/notes/new", :controller => "notes", :action => "new"
  post "/create_note", :controller => "notes", :action => "create"

  # READ
  get "/notes", :controller => "notes", :action => "index"
  get "/notes/:id", :controller => "notes", :action => "show"

  # UPDATE
  get "/notes/:id/edit", :controller => "notes", :action => "edit"
  post "/update_note/:id", :controller => "notes", :action => "update"

  # DELETE
  get "/delete_note/:id", :controller => "notes", :action => "destroy"
  #------------------------------

  devise_for :users
  # Routes for the User resource:
  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"


  # Routes for the Task resource:
  # CREATE
  get "/tasks/new", :controller => "tasks", :action => "new"
  post "/create_task", :controller => "tasks", :action => "create"

  # READ
  get "/tasks", :controller => "tasks", :action => "index"
  get "/tasks/:id", :controller => "tasks", :action => "show"

  # UPDATE
  get "/tasks/:id/edit", :controller => "tasks", :action => "edit"
  post "/update_task/:id", :controller => "tasks", :action => "update"

  # DELETE
  get "/delete_task/:id", :controller => "tasks", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
