class User < ApplicationRecord
	has_one :address, as: :addressable
	has_many :request_leaves
	accepts_nested_attributes_for :address
	mount_uploader :image, ProfileUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,:recoverable, :rememberable, :validatable
end
