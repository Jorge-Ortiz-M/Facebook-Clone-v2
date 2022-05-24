require 'rails_helper'

RSpec.describe Post, type: :model do

    let(:post) { Post.create(title: 'Hasura',
            body: 'This is a short description of this post.',
            user_id: 1)
    }

    it 'length of the body must be grater than 20' do
        expect(post.body_length).to be true
    end

    it 'should have the user id' do
        expect(post.user_id).to be > 0
    end

end
