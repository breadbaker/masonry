Masonry::Application.routes.draw do

  root to: 'menu#index'

  get 'twilio', to: 'inbound#twilio'
end
