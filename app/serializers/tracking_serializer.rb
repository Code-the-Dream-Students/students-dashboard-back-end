class TrackingSerializer < ActiveModel::Serializer
  attributes :student_id, :user_id, :course_id, :course, :first_name, :last_name, :units, :student_weekly_progresses

  def message
    message = "Success"
  end

  def first_name
    object.first_name
  end

  def last_name
    object.last_name
  end

  def student_id
    object.id
  end

  def user_id
    object.user.id
  end

  def student_weekly_progresses
    object.student_weekly_progresses.order("student_id ASC", "week_number ASC").map do |progress|
      {
        week: progress.week_number,
        week_id: progress.week.id,
        unit_id: progress.week.unit.id,
        unit: progress.week.unit.name,
        unit_description: progress.week.unit.description,
        lesson_id: progress.week.lesson.id,
        lesson: progress.week.lesson.lesson_name,
        total_progress: progress.total_progress,
        assignment_progress: progress.assignment_progress,
        instructions_progress: progress.instructions_progress,
        resources_progress: progress.resources_progress,
        assignment_submission: progress.assignment_submission
      }
    end
  end

  def units
    progress = object.student_weekly_progresses.order("student_id ASC", "week_number ASC").reduce({}) do |acc, curr|
      unit = curr.week.unit.name.to_sym
      if acc.key?(unit)
        {**acc, unit => [*acc[unit], {
          week: curr.week_number,
          week_id: curr.week.id,
          unit_id: curr.week.unit.id,
          unit: curr.week.unit.name,
          unit_description: curr.week.unit.description,
          lesson_id: curr.week.lesson.id,
          lesson: curr.week.lesson.lesson_name,
          total_progress: curr.total_progress,
          assignment_progress: curr.assignment_progress,
          instructions_progress: curr.instructions_progress,
          resources_progress: curr.resources_progress,
          assignment_submission: curr.assignment_submission
        }]}
      else
        {**acc, unit => [{
          week: curr.week_number,
          week_id: curr.week.id,
          unit_id: curr.week.unit.id,
          unit: curr.week.unit.name,
          unit_description: curr.week.unit.description,
          lesson_id: curr.week.lesson.id,
          lesson: curr.week.lesson.lesson_name,
          total_progress: curr.total_progress,
          assignment_progress: curr.assignment_progress,
          instructions_progress: curr.instructions_progress,
          resources_progress: curr.resources_progress,
          assignment_submission: curr.assignment_submission
        }]}
      end
    end
    progress
  end

  def course
    object.student_weekly_progresses.map do |progress|
      return progress.week.course.name
    end
  end

  def course_id
    object.student_weekly_progresses.map do |progress|
      return progress.week.course.id
    end
  end

end
