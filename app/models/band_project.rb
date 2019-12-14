class BandProject < ApplicationRecord
  has_many :musician_seeks
  has_many :users, through: :musician_seeks
  mount_uploader :photo, PhotoUploader
end
