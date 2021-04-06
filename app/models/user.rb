class User < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers: [:twitter, :google_oauth2]

  has_many :sns_credentials, dependent: :destroy
  has_many :marks, dependent: :destroy
  has_many :galleries, dependent: :destroy
  has_many :travels, dependent: :destroy

  validates :name, length: { minimum: 1, maximum: 10 }
  validates :email, {presence: true, format: { with: VALID_EMAIL_REGEX }}

  attachment :profile_image
  

  def self.from_omniauth(auth)
  sns = SnsCredential.where(provider: auth.provider, uid: auth.uid).first_or_create

  user = sns.user || User.where(email: auth.info.email).first_or_initialize(
    name: auth.info.name,
    email: auth.info.email
  )
    if user.persisted?
      sns.user = user
      sns.save
    end
    { user: user, sns: sns }
  end
  
  # uidとproviderをuserテーブルに入れた時はこっちで良い
  #   def self.from_omniauth(auth)
  #   self.where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
  #     user.email = auth.info.email
  #     user.password = Devise.friendly_token[0, 20]
  #     user.name = auth.info.name
  #     user.profile_image = auth.info.image
  #   # assuming the user model has a name
  #   # assuming the user model has an image
  #   # If you are using confirmable and the provider(s) you use validate emails,
  #   # uncomment the line below to skip the confirmation emails.
  #   # user.skip_confirmation!
  #   end
  # end
end
