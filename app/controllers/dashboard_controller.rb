class DashboardController < ApplicationController
  #GET /dashboard
  def index
    @subjects = Subject.all
    @students = Student.all
    @selected_subject = Subject.first
  end

  #POST /dashboard
  def getScores
    @students = Student.all
    @subjects = Subject.all
    @selected_subject = Subject.find(subject_param[:id])
    render :index
  end

  private 

  # Never trust parameters from the scary internet, only allow the white list through.
  def subject_param
    puts "aram"
    params.require(:subject).permit(:id)
  end
end