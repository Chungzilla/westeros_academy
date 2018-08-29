class Student < ApplicationRecord
  has_one :user, as: :userable, dependent: :destroy
  accepts_nested_attribute_for :user
end