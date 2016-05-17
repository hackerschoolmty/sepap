class CourseSessionsController < ApplicationController
  
  def index
    @course_sessions = CourseSession.all
  end

  def show
    @course_session = CourseSession.find(params[:id])
  end

end
