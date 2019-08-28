# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html

get 'sc_autoresp', to: 'configuration#index'
post 'sc_autoresp_save',  to: 'configuration#save'

