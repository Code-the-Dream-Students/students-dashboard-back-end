class MentorCoursesController < ApplicationController
  def index
    if current_user.role === "mentor"
      render ({
        json: { 
          user: current_user,
          mentor_data: current_user.mentor,
          courses: current_user.mentor.courses 
        }, 
        status: 200
      })
    else
      render json: { error: "Not Found" }, status: 404
    end
  end

  def show
    if current_user.role === "mentor"
      render ({
        json: { 
          course: current_user.mentor.courses.find(params[:course_id]) 
        }, 
        status: 200
      })
    else
      render json: { error: "Not Found" }, status: 404
    end
  end

end
