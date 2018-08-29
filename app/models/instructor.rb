class Instructor < ApplicationRecord
    has_one :user, as: :userable, dependent: :destroy
    has_one :course, :through => :enrollments
    accepts_nested_attributes_for :user
end
