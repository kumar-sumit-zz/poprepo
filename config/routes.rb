Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'repo#index'

  get 'showpoprepo', to: 'repo#showpoprepo'

  get 'topcommittees1', to: 'repo#topcommittees1'

  get 'topcommittees2', to: 'repo#topcommittees2'

  get 'topcommittees3', to: 'repo#topcommittees3'

  get 'topcommittees4', to: 'repo#topcommittees4'

  get 'topcommittees5', to: 'repo#topcommittees5'

  #get 'repo', to: 'repo#show'
end
