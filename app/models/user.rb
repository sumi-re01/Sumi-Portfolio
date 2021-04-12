class User < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :sns_credentials, dependent: :destroy
  has_many :marks, dependent: :destroy
  has_many :galleries, dependent: :destroy
  has_many :travels, dependent: :destroy

  validates :name, length: { minimum: 1, maximum: 10 }
  validates :email, {presence: true, format: { with: VALID_EMAIL_REGEX }}

  attachment :profile_image
end
