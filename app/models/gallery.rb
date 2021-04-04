class Gallery < ApplicationRecord

  belongs_to :user
  has_many :marks, dependent: :destroy

  validates :title, presence: true
  validates :text, length: { minimum: 2, maximum: 200 }
  validates :imge, presence: true

  attachment :image

  def marked_by?
    marks.where(user_id. user.id).exists
  end

end
