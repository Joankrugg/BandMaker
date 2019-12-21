class BandProject < ApplicationRecord
  belongs_to :user, required: true
  has_many :applyings
  mount_uploader :photo, PhotoUploader
end
