class ChateroomesController < ApplicationController
    
    def create
        @chatroom = chatroom.create(chatroome_params)
        @chatroom.sender_id = current_user.id
    end

    private

    def chatroome_params
        params.require(:chatroome).permit(:receiver_id, :flat_rental_id)
    end
end