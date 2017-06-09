Rails.application.routes.draw do
  # Routes for the Zipcode resource:
  # CREATE
  root "leads#index"

  get "/zipcodes/new", :controller => "zipcodes", :action => "new"
  post "/create_zipcode", :controller => "zipcodes", :action => "create"

  # READ
  get "/zipcodes", :controller => "zipcodes", :action => "index"
  get "/zipcodes/:id", :controller => "zipcodes", :action => "show"

  # UPDATE
  get "/zipcodes/:id/edit", :controller => "zipcodes", :action => "edit"
  post "/update_zipcode/:id", :controller => "zipcodes", :action => "update"

  # DELETE
  get "/delete_zipcode/:id", :controller => "zipcodes", :action => "destroy"
  #------------------------------

  # Routes for the Appointment resource:
  # CREATE
  get "/appointments/new", :controller => "appointments", :action => "new"
  post "/create_appointment", :controller => "appointments", :action => "create"

  # READ
  get "/appointments", :controller => "appointments", :action => "index"
  get "/appointments/:id", :controller => "appointments", :action => "show"

  # UPDATE
  get "/appointments/:id/edit", :controller => "appointments", :action => "edit"
  post "/update_appointment/:id", :controller => "appointments", :action => "update"

  # DELETE
  get "/delete_appointment/:id", :controller => "appointments", :action => "destroy"
  #------------------------------

  # Routes for the Lead resource:
  # CREATE
  get "/leads/new", :controller => "leads", :action => "new"
  post "/create_lead", :controller => "leads", :action => "create"

  # READ
  get "/leads", :controller => "leads", :action => "index"
  get "/leads/:id", :controller => "leads", :action => "show"

  # UPDATE
  get "/leads/:id/edit", :controller => "leads", :action => "edit"
  post "/update_lead/:id", :controller => "leads", :action => "update"

  # DELETE
  get "/delete_lead/:id", :controller => "leads", :action => "destroy"
  #------------------------------

  # Routes for the Agency resource:
  # CREATE
  get "/agencies/new", :controller => "agencies", :action => "new"
  post "/create_agency", :controller => "agencies", :action => "create"

  # READ
  get "/agencies", :controller => "agencies", :action => "index"
  get "/agencies/:id", :controller => "agencies", :action => "show"

  # UPDATE
  get "/agencies/:id/edit", :controller => "agencies", :action => "edit"
  post "/update_agency/:id", :controller => "agencies", :action => "update"

  # DELETE
  get "/delete_agency/:id", :controller => "agencies", :action => "destroy"
  #------------------------------

  devise_for :agents
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
