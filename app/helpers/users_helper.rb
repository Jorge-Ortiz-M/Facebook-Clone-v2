module UsersHelper

    # -------------------------------------------
    def admin_room(user, room)
        user.id === room.user_id ? true : false
    end
    # This helper verifies if the current user is the same from the room user
    #       in order to make changes to the room, like an admin. 
    # user = The current user logged in.
    # room = The curret room that the user is in.
    # -------------------------------------------


end
