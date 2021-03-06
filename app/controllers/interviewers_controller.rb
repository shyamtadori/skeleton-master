class InterviewersController < ApplicationController
	before_action :set_interviewer

	def show
		interviews = @interviewer.upcoming_two_interviews

		render :status => 200,
			  	 :json => interviews.as_json(:include=>[:candidates, :questions])
	end

	private
	def set_interviewer
		@interviewer = Interviewer.find_by_id(params[:id])
		render :status => 404, :json => {:message => "Interviwer not found with this id"} if !@interviewer
	end
end
