class User < ApplicationRecord
  belongs_to :userable, polymorphic: true
  has_one :house
  has_many :courses, :through => :enrollments
  validates :first_name, :last_name, :gender, :username, :email, :password, presence: true
  validates :email, :username, uniqueness: true
end
