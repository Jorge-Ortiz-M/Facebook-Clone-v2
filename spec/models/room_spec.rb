require 'rails_helper'

RSpec.describe Room, type: :model do

    let(:room){
            Room.new(name: 'General Room',
                user_id: 2
            )
        }

    describe 'Room attributes' do

        it 'validates the presence of name' do
            expect(room.name).to_not be_nil
        end
        
        it 'validates the presence of user_id' do
            expect(room.user_id).to_not be_nil
        end

    end
end
