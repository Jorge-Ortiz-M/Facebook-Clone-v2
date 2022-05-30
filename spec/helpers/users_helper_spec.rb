require 'rails_helper'

RSpec.describe UsersHelper, type: :helper do

    describe "Verify if the current user belongs the room" do

        let(:user1){        # The Admin user.
            User.create(id: 1,
                email: 'some@email.com', 
                password: 'J0rge123', 
                password_confirmation: 'J0rge123', 
                approve: false,
                role: 'member')
        }

        let(:user2){        # The Participant user.
            User.create(id: 2,
                email: 'other@email.com', 
                password: 'J0rge123', 
                password_confirmation: 'J0rge123', 
                approve: false,
                role: 'member')
        }
        
        let(:room){         # The Room created by the user 1.
            Room.create(id: 1,
                name: 'General Room',
                user_id: 1
            )
        }

        it "Compare current_user with room.user" do     # It must be true if the room's admin is the current user.
            expect(helper.admin_room(user1, room)).to be true
        end
    end

end
