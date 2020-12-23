class MentorCourse < ApplicationRecord
  belongs_to :mentor
  belongs_to :course
end
