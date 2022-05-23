require 'rails_helper'

RSpec.describe User, type: :model do

    it 'approve attribute must be false at the begginig' do

        user = User.create(email: 'some@email.com', 
            password: '123123', 
            password_confirmation: '123123', 
            approve: false) 

        expect(user.approve_must_be_false).to be false

    end
end
