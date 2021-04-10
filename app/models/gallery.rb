class Gallery < ApplicationRecord

  belongs_to :user
  has_many :marks, dependent: :destroy

  validates :title, presence: true
  validates :text, length: { minimum: 5 }
  validates :image, presence: true

  attachment :image

  geocoded_by :address
  after_validation :geocode, :if => :address_changed?

  def marked_by?(user)
    marks.where(user_id: user.id).exists?
  end

end
