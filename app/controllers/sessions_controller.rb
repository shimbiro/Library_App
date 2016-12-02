class SessionsController < ApplicationController
 def new
    end

  	def create
  		@user = User.find_by(email: params[:session][:email].downcase)
		# if @user && @user.authenticate(params[:session][:password])
		# Log the user in and redirect to the user's show page.
		if @user
		log_in @user
		redirect_to 'show'
		else
		# Create an error message.
		flash[:danger] = 'Invalid email/password combination' # Not quite right!
		# render 'new'
		redirect_to sessions_new_url 
	end
	end
	
	def destroy
	end
	
end
