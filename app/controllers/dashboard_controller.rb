class DashboardController < ApplicationController
  before_action :initnew, only: [:index, :getScores]
  #GET /dashboard
  def index
    
  end

  #POST /dashboard
  def getScores
    @selected_subject = Subject.find(subject_param[:id])
    render :index
  end

  private 

  def initnew
    @assignments = Assignment.joins("inner join students s on assignments.student_id = s.id").order("s.name")
    @students = Student.all.order(:name)
    @schedule_item = ScheduleItem.new
    @students.each do |s|
      s.objectives.each do 
        @schedule_item.scores.build
      end
    end
    setDay
    @subjects = Subject.all
    @selected_subject = Subject.first
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def subject_param
    params.require(:subject).permit(:id)
  end

  def setDay
    d = params[:day]

    if(d)
      begin
        @day = d.to_date
      rescue ArgumentError
        @day = Date.today
      end
    else
      @day = Date.today
    end
   
  end


end