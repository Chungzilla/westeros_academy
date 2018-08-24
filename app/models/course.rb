class Course < ApplicationRecord
    hasy_many :users, :through => :enrollments
end

