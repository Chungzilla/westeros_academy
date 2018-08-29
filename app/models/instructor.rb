class Instructor < ApplicationRecord
    has_one :user, as: :userable, dependent: :destroy
    has_one :course, :through => :enrollments
    accepts_nested_attribute_for :user
end
