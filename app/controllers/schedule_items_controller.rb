class ScheduleItemsController < ApplicationController
	before_action :set_schedule_item, only: [:update]
	def create
		@schedule_item = ScheduleItem.new(schedule_item_params)

	  if @schedule_item.save
	    redirect_to root_path, notice: 'Scores were successfully created.' 
	  else
	  	redirect_to root_path, notice: 'Scores were NOT successfully created.' 
	  end

	end

	def update
		if @schedule_item.update(schedule_item_params)
			redirect_to root_path, notice: 'Scores were successfully updated.' 
	  else
	  	redirect_to root_path, notice: 'Scores were NOT successfully updated.' 
	  end
	end

	private

		def schedule_item_params
			params.require(:schedule_item).permit(:id, :day, :subject_id, :time, scores_attributes: [:assignment_id, :value, :id])
		end

		def set_schedule_item
      @schedule_item = ScheduleItem.find(params[:id])
    end
end
