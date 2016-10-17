class SessionsController < ApplicationController
    
    def new #the new action will render a form
        
    end
    
    def create #the form submission will be handled by the create action. this will start the session and display the user in a logged in state
        user = User.find_by(email: params[:session][:email].downcase)
        if user && user.authenticate(params[:session][:password])
            session[:user_id] = user.id
            flash[:success]= "You have successfully logged in"
            redirect_to user_path(user)
        else
            flash.now[:danger] = "There was something wrong with your login information"
            render 'new'
        end
    end
    
    def destroy # for logging out. this will stop the session and move the user to logged out state.
        session[:user_id] = nil
        flash[:success] = "You have logged out"
        redirect_to root_path
    end
    
end
