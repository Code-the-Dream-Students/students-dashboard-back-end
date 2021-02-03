class TrackingSerializer < ActiveModel::Serializer
  attributes :message, :student_info

  # has_many :student_weekly_progresses
  # belongs_to :week

  def message
    message = "Success"
  end
  
  def student_info
    {student_id: object.id, first_name: object.first_name, last_name: object.last_name, course_info: object.student_weekly_progresses[0].week}
  end

  def course_info
    object.object
  end

  # def course_info
  #   { student_weekly_progresses: [
  #     { 
  #       total_progress: object.total_progress,
  #       assignment_progress: object.assignment_progress,
  #       resources_progress: object.resources_progress,
  #       instructions_progress: object.instructions_progress,
  #       assignment_submission: object.assignment_submission
  #     }
  #   ]
  #   }
  # end 

end
