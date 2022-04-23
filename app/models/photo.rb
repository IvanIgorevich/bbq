class Photo < ApplicationRecord
  belongs_to :event
  belongs_to :user
  has_one_attached :picture

  validates :event, presence: true
  validates :user, presence: true

  mount_uploader :photo, PhotoUploader

  scope :persisted, -> { where "id IS NOT NULL" }
end
