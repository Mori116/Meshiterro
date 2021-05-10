Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  # URL内に[/top]の文字なくても、トップページが表示される
end