class UsersController < ApplicationController
    def new
      @user = User.new  
    end
    
    def create
        @user = User.new(user_params)
        if @user.save
            flash[:success]="Welcome to the blog #{@user.username}"
            redirect_to articles_path
        else
            render 'new'
        end
    end
    
    # we need to whitelist what we are accepting so we need a private method
    private
        def user_params
            params.require(:user).permit(:username, :email, :password)
        end
end
