class Parent < ApplicationRecord
    has_one :user, as: :userable, dependent: :destroy
    accepts_nested_attributes_for :user
end
