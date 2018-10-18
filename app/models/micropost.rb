class Micropost < ApplicationRecord
  belongs_to :user

  has_many :favorites
  has_many :liked_users, through: :favorites, source: :user


  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 255 }

  # def favorite(user)
  #   favorites.create(user_id: user.id)
  # end
  #
  # def unfavoite(user)
  #   favorites.find_by(user_id: user.id).destroy
  # end
  #
  # def favorite?(user)
  #   self.favorites.include?(user)
  # end
end
