class Group < ApplicationRecord

  has_many :group_users, dependent: :destroy
  has_one_attached :image

  validates :name, presence: true
  validates :introduction, presence: true

  def get_image
    (image.attached?) ? image : 'no_image.jpg'
  end

  def user_exist?(user)
    group_users.where(user_id: user.id).exists?
  end

end
