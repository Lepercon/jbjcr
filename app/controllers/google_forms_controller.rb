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

	def edit
		@google_form = GoogleForm.find(params[:id])
	end

	def update
		@google_form = GoogleForm.find(params[:id])
		respond_to do |format|
			if @google_form.update(google_form_params)
				format.html { redirect_to @google_form, notice: 'Formal 
															was successfully updated.'}
			else 
				format.html { render :edit }
			end
		end
	end

	def destroy
    @google_form = GoogleForm.find(params[:id])
    @google_form.destroy
    respond_to do |format|
      format.html { redirect_to google_forms_path}
      flash[:success] = "Formal deleted"
    end
  end


	private

	def google_form_params
		params.require(:google_form).permit(:id, :formalname, :formallink, :description)
	end
end
