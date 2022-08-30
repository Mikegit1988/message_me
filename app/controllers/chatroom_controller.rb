class ChatroomController < ApplicationController
    before_action :require_user #to restrict user from accessing all message without login
    #this require_user is declare in application_controller for checking user !logged_in
    
    def index #This action is displaying all user messages
        @message = Message.new #this to initiate new message
        @messages = Message.all
    end
end
