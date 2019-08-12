Rails.application.routes.draw do
    get 'home/index'
    get 'posts/new', to: 'posts#new'
    post "posts", to: "posts#create"
    get 'posts/:id/edit', to: 'posts#edit'
    delete 'posts/:id/destroy', to: 'posts#destroy'
    patch 'posts/:id', to: 'posts#update'
    get 'posts/:id', to: 'posts#show'
end
