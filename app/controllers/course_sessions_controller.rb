class CourseSessionsController < ApplicationController
  def index
    @course_sessions = CourseSession.all
  end
end
