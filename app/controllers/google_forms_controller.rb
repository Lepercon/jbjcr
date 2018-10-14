class GoogleFormsController < ApplicationController

	def index
		@google_forms = GoogleForm.all
	end

	def new
		@google_form = GoogleForm.new
	end

	def show
		@google_form = GoogleForm.find(params[:id])
	end
	
	def create
		@google_form = GoogleForm.new(google_form_params)
		if @google_form.save
			flash[:success] = "New formal made"
			redirect_to google_forms_path
		else
			flash[:error] = "Failed to make new formal"
			render 'new'
		end
	end


	private

	def google_form_params
		params.require(:google_form).permit(:id, :formalname, :formallink, :description)
	end
end
