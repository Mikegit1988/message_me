class SessionsController < ApplicationController
    before_action :logged_in_redirect, only: [:new, :create] #this private before action will only works for new action and create action
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
    
    private #this private message will only available in this section
    
    def logged_in_redirect
        if logged_in?
            flash[:error] = "You are already logged in"
            redirect_to root_path
        end
    end
end
