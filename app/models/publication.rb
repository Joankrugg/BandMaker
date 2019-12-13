class Publication < ApplicationRecord
  belongs_to :user
  mount_uploader :photo, PhotoUploader
  validates :photo, presence: true
  validates :comment, presence: true
end
