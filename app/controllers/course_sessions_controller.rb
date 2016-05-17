class CourseSessionsController < ApplicationController
  
  def index
    @course_sessions = CourseSession.all
  end

  def show
    @course_session = CourseSession.find(params[:id])
    @students = Student.all
  end

  def update
    @course_session = CourseSession.find(params[:id])
    if @course_session.update(course_session_parameters)
      redirect_to @course_session
    end
  end

  private

  # No se si tocarlo
  
  def course_session_parameters
    params.require(:course_session).permit(student_ids: [])
  end

end
