class AssignmentsController < ApplicationController
	before_action :set_assignemnts, only: [:index]

	def index
	end

	def student_objective
	end

	def new
		@assignment = Assignment.new
	end

	def create
		@assignment = Assignment.new(assignment_params)
		respond_to do |format|
			if @assignment.save
				format.html { redirect_to @assignment.student, notice: 'Assignment was successfully created.' }
				#format.json { render 'students#show', status: :created, location: @assignment.student}
			else
				format.html { redirect_to root_path}
				#format.json { render json: @student.errors, status: :unprocessable_entity }
			end
		end
	end

	private

	def set_assignemnts
      @assignments = Assignment.where(:student_id => params[:student_id])
    end

	def assignment_params
      params.require(:assignment).permit(:student_id, :objective_id)
    end

end
