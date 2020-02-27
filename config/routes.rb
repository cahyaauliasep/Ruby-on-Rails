 # config/routes.rb
Rails.application.routes.draw do
  get  '/posts',     to: 'posts#index',  as: :posts
  post '/posts',     to: 'posts#create', as: nil
  get  '/posts/new', to: 'posts#new',    as: :new_post
  get  '/posts/:id', to: 'posts#show',   as: :post

  # it will generate url_helper such as:
  # posts_url    -> http://localhost:5000/posts
  # post_url(:id) -> http://localhost:5000/posts/:id
  # new_activity_url  -> http://localhost:5000/posts/new
end
