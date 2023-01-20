require_relative "./carts_controller"
require_relative "./items_controller"


class ApplicationController < Sinatra::Base

  use CartController
  use ItemController
  
  set :default_content_type, 'application/json'
  
  
end