class Course < ApplicationRecord
    has_many :users, :through => :enrollments
end

