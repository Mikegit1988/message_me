class MessagesController < ApplicationController
    before_action :require_user
    
    def create
        message = current_user.messages.build(message_params)
        if message.save
            #redirect_to root_path
            ActionCable.server.broadcast "chatroom_channel", #broadcast this message, it's take a in form of hash
                                            #foo: message.body #this should be receive in my chatroom.coffee (data)
                                             mod_message: message_render(message)  #Also can render using a hash
                                            
        end
    end
    
    private
    
    def message_params #declare params whithlisted
       params.require(:message).permit(:body)
    end
    
    def message_render(message)
        render(partial: 'message', locals: {message: message}) #Calling the partial with that message that has been just created, also pass the message object to my partial(locals: {})
    end
    
end