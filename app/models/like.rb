class Like < ApplicationRecord
  belongs_to :user
  belongs_to :post, counter_cache: :likes_count
  validates :user_id, uniqueness: {
                        scope: :post_id,
                        message: "同じ投稿に2回以上いいねはできません",
                      }
end
