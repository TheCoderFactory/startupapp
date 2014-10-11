class Profile < ActiveRecord::Base
  belongs_to :user, dependent: :destroy

  extend FriendlyId
  friendly_id :full_name, use: :slugged

  mount_uploader :picture, ProfilePictureUploader

  def full_name
  	[first_name, last_name].join(' ')
  end
end
