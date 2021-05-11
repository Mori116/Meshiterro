class PostImage < ApplicationRecord
  belongs_to :user
  # アソシエーション（Userモデルのuser_idに関連付け） 一つのモデルに関連付けのため、「単体形」user。
  attachment :image
  # refileルールのため、記述必要
  has_many :post_comment, dependent: :destroy
  has_many :favorites, dependent: :destroy

  validates :shop_name, presence: true
  validates :image, presence: true

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end
  # 引数で渡されたユーザidがFavoritesテーブル内に存在（exists?）するかどうかを調べる。
  # 存在していればtrue、存在していなければfalseを返す。

end
