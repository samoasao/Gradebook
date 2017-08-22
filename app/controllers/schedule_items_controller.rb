class ScheduleItemsController < ApplicationController
	def create
		@schedule_item = ScheduleItem.new(schedule_item_params)

		puts "Scores " + @schedule_item.scores.last.value.to_s + "!"

	  if @schedule_item.save
	    redirect_to root_path, notice: 'Scores were successfully created.' 
	  else
	  	redirect_to root_path, notice: 'Scores were NOT successfully created.' 
	  end

	end

	private

		def schedule_item_params
			params.require(:schedule_item).permit(:day, :subject_id, :time, scores_attributes: [:assignment_id, :value])
		end

end
