require 'rails_helper'

RSpec.describe User, type: :model do

    let(:user) {
        User.create(email: 'some@email.com', 
                password: 'jorgeo', 
                password_confirmation: 'anama', 
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

    it 'password and password confirmation should be the same' do
        expect(user.passwords_must_be_equal).to be true
    end

    it 'password should have at least one upper letter' do
        expect(user.password_upper_letter).to be true
    end

    it 'password should have at least one number' do 
        expect(user.password_numbers).to be true
    end

end
