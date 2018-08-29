class User < ApplicationRecord
  belongs_to :userable, polymorphic: true
  belongs_to :house
  has_many :courses, :through => :enrollments
  validates :first_name, :last_name, :gender, :username, :email, :password, presence: true
  validates :email, :username, uniqueness: true


  def self.gender
    %w[Female Male]
  end

  def self.house
    %w[Baratheon Greyjoy Lannister Martell Stark Targaryen Tyrell]
  end

 
end
