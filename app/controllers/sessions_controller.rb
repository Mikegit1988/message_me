class SessionsController < ApplicationController
    
    #define the new action
    def new
        
    end
    
    def create #these codes below are for creating a user session(login a user)
        #Let's grab a user
        user = User.find_by(username: params[:session][:username])
        #set condition to login user
        if user && user.authenticate(params[:session][:password])
            #good scenario
            session[:user_id] = user.id
            flash[:success] = "You have successfully logged in"
            redirect_to root_path
        else
            flash.now[:error] = "There was something wrong with your login information"
            render 'new'
        end
    end
    
    def destroy #these codes below are for loggout a user (terminate a session)
        session[:user_id] = nil
        flash[:success] = "You have successfully logged out"
        redirect_to login_path
        
    end
end
