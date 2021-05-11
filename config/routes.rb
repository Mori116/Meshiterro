Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  # URL内に[/top]の文字なくても、トップページが表示される
  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
    resource :favorites, only: [:create, :destroy]
    # resource: いいねの詳細ページがなく、idの受け渡しもないため単数形
    resources :post_comments, only: [:create, :destroy]
  end
  resources :users, only: [:show, :edit, :update]

end