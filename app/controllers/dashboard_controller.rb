class DashboardController < ApplicationController
  before_action :initnew, only: [:index, :getScores]

  #GET /dashboard
  def index
    
  end

  #POST /dashboard
  def getScores
    @selected_subject = Subject.find(subject_param[:id])
    set_schedule_item
    render :index
  end

  private 

  def initnew
    set_day
    @assignments = Assignment.joins("inner join students s on assignments.student_id = s.id").order("s.name")
    @students = Student.all.order(:name)
    @subjects = Subject.all
    @selected_subject = Subject.first
    
    set_schedule_item
  end




  # Never trust parameters from the scary internet, only allow the white list through.
  def subject_param
    params.require(:subject).permit(:id)
  end

  def set_schedule_item
    puts "SETTING SCHEDULE ITEM!!!!!!!!!!!!!!!!"
    @schedule_item = ScheduleItem.find_by(day: @day, subject: @selected_subject.id)

    if(@schedule_item.nil?)
      puts "NEW DAY AND SUBJECT!!!!!!!!!!!!!!!!"
      @schedule_item = ScheduleItem.new
      @students.each do |s|
        s.objectives.each do 
          @schedule_item.scores.build
        end
      end
    else
      puts "ALREADY SCORES FOR THIS DAY AND SUBJECT!!!!"
    end


  end

  def set_day
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