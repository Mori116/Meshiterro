class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :post_images, dependent: :destroy
  # アソシエーション（PostImageモデルとの関連付け）　dependent: :destroyで、ユーザー情報削除時に関連付けた投稿も一緒に削除される
  has_many :post_comment, dependent: :destroy
  has_many :favorites, dependent: :destroy
end