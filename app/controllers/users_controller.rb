class UsersController < ApplicationController
def index
  @user = User.all
end
def new
@user = User.new
end
def show
    @user = User.find_by(params[:id])
end
  def create
        @user = User.new(user_params)
        if @user.save
    
            redirect_to users_url , notice: "Account successfully created"
        else
            render 'new'
          end

        end
 
        def edit
            @user = User.find_by(params[:id])

        end

        def update
    @user = User.find_by(params[:id])
    if @user.update_attributes(user_params)
      # Handle a successful update.
       flash[:success] = "Profile updated"
       redirect_to users_url 
    else
      render 'edit'
    end
  end

          private
        def user_params
         params.require(:user).permit(:username, :email, :password, :password_confirm)
        end
      end
