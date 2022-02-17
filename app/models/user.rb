class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :events, dependent: :destroy

  before_save :set_name

  validates :name, presence: true, length: { maximum: 35 }

  def set_name
    self.name = "User №#{rand(777)}" if self.name.blank?
  end
end
