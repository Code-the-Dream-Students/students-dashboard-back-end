class TrackingSerializer < ActiveModel::Serializer
  attributes :student_id, :course_id, :course, :first_name, :last_name, :student_weekly_progress

  # has_many :student_weekly_progresses
  # belongs_to :week

  def message
    message = "Success"
  end
  
  # def student_info
  #   {student_id: object.id, first_name: object.first_name, last_name: object.last_name}
  # end

  def first_name
    object.first_name
  end

  def last_name
    object.last_name
  end

  def student_id
    object.id
  end

  def student_weekly_progress
    object.student_weekly_progresses.map do |progress|
      {
        unit_id: progress.week.unit.id,
        unit: progress.week.unit.unit_name,
        unit_description: progress.week.unit.description,
        lesson_id: progress.week.lesson.id,
        lesson: progress.week.lesson.lesson_name,
        week: progress.week_number,
        week_id: progress.week.id,
        total_progress: progress.total_progress,
        assignment_progress: progress.assignment_progress,
        instructions_progress: progress.instructions_progress,
        resources_progress: progress.resources_progress,
        assignment_submission: progress.assignment_submission
      }
    end
  end

  # def units
  #   object.student_week_progresses.reduce([]) {
  #     |acc, curr|
  #     if curr.week.unit.unit_name
  #   }
  # end

  def course
    object.student_weekly_progresses.map do |progress|
      return progress.week.course.course_name
    end
  end

  def course_id
    object.student_weekly_progresses.map do |progress|
      return progress.week.course.id
    end
  end

end
