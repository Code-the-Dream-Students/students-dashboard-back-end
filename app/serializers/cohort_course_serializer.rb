class CohortCourseSerializer < ActiveModel::Serializer
  attributes :id, :cohort_id, :course_id

  belongs_to :cohort
  belongs_to :course
end
