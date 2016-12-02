class SessionsController < ApplicationController
	
  def new
  end



  def create
	user = User.find_by(email: params[:session][:email].downcase)
	
    if user
	# Log the user in and redirect to the user's show page.
	login_url
	redirect_to users_path
	else
	# Create an error message.
	flash.now[:danger] = 'Invalid email/password combination' # Not quite right!
	render 'new'
	end
  end

  def destroy
		log_out
		redirect_to root_url
  end

end
