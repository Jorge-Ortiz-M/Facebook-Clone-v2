require 'rails_helper'

RSpec.describe User, type: :model do

    let(:user) {
        User.create(email: 'some@email.com', 
                password: '123123', 
                password_confirmation: '123123', 
                approve: false,
                role: 'member')
    }

    it 'approve attribute must be false in new records' do
        expect(user.approve_must_be_false).to be false
    end

    it 'role attribute must be member in new records' do
        expect(user.role_must_be_member).to eq('member')
    end

    it 'email shuold be presence' do 
        expect(user.email.length).to be > 0
    end

    it 'password should have at least 6 characters' do
        expect(user.password_length).to be >= 6
    end
end
