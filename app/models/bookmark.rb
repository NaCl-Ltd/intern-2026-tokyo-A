class Bookmark < ApplicationRecord
  belongs_to :user
  belongs_to :micropost

  validate :user_id, uniqueness: { scope: :micropost_id }
end
