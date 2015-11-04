class User < ActiveRecord::Base
	validates :email, presence: true, uniqueness: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :rememberable, :trackable, :validatable
  has_many :responses
  has_many :questions
  has_many :stories

  mount_uploader :profile_cover_page, ProfileCoverPageUploader
  mount_uploader :profile_photo, ProfilePhotoUploader
end
