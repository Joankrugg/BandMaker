class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  mount_uploader :photo, PhotoUploader

  has_one_attached :photo

  has_many :instrument_practices
  has_many :instruments, through: :instrument_practices
  has_many :favorite_genres
  has_many :genres, through: :favorite_genres
  has_many :user_abilities
  has_many :musician_seeks

  has_many :applyings
  has_many :band_projects, dependent: :destroy
  has_many :band_project_applyings, through: :band_projects, source: :applyings

  has_many :abilities, through: :user_abilities
  has_many :publications
  has_many :user_categories
  has_many :categories, through: :user_categories
  has_many :user_regions
  has_many :regions, through: :user_regions



  has_many :follower_relationships, foreign_key: :following_id, class_name: 'Follow'
  has_many :followers, through: :follower_relationships, source: :follower

  has_many :following_relationships, foreign_key: :follower_id, class_name: 'Follow'
  has_many :following, through: :following_relationships, source: :following


  def follow(user_id)
    following_relationships.create(following_id: user_id)
  end

  def unfollow(user_id)
    following_relationships.find_by(following_id: user_id).destroy
  end

  def is_following?(user_id)
    relationship = Follow.find_by(follower_id: id, following_id: user_id)
    return true if relationship
  end

end

