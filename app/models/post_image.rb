class PostImage < ApplicationRecord
  belongs_to :user
  # アソシエーション（Userモデルのuser_idに関連付け） 一つのモデルに関連付けのため、「単体形」user。
  attachment :image
  # refileルールのため、記述必要
end
