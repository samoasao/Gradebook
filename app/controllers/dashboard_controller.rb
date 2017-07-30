class DashboardController < ApplicationController
  #GET /dashboard
  def index
    # @students = Student.all
    @subjects = Subject.all
  end

  #POST /dashboard
  def getScores
    @students = Student.all
    @subjects = Subject.all
    puts "ok now"
    render "students/dashboard"
  end
end