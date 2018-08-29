class User < ApplicationRecord
  belongs_to :userable, polymorphic: true
  belongs_to :house
  has_many :courses, :through => :enrollments
  validates :first_name, :last_name, :gender, :username, :email, :password, presence: true
  validates :email, :username, uniqueness: true
  accepts_nested_attributes_for :userable

  def self.gender
    %w[Female Male]
  end

  def self.house
    %w[Baratheon Greyjoy Lannister Martell Stark Targaryen Tyrell]
  end

  validates :gender, inclusion: {in: User.gender}
  validates :house, inclusion: {in: User.house}
end
