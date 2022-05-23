require 'rails_helper'

RSpec.describe User, type: :model do
    it 'approve attribute must be false in new records' do
        user = User.create(email: 'some@email.com', 
            password: '123123', 
            password_confirmation: '123123', 
            approve: false) 
        expect(user.approve_must_be_false).to be false
    end

    it 'role attribute must be member in new records' do
        user = User.create(email: 'some@email.com', 
            password: '123123', 
            password_confirmation: '123123', 
            approve: false,
            role: 'member') 
        expect(user.role_must_be_member).to eq('member')
    end
end
