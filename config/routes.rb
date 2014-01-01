Masonry::Application.routes.draw do

  root to: 'menu#index'

  get '/menu.html', to: 'menu#menu'

  get '/index.html', to: 'menu#index'

  get 'twilio', to: 'inbound#twilio'

  get 'notify', to: 'menu#notify'

  post '/email_processor', to: 'inbound#email'

  get '/email_processor', to: 'inbound#email'
end
