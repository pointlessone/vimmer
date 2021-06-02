require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'username' do
    it 'is unique' do
      User.create(
        email: 'u1@example.org',
        username: 'pure_awesomeness',
        password: 'passw0rd',
        password_confirmation: 'passw0rd',
      )

      user = User.new(
        email: 'u2@example.org',
        username: 'pure_awesomeness',
        password: 'passw0rd',
        password_confirmation: 'passw0rd',
      )

      expect(user).to be_invalid
      expect(user.errors[:username]).to include 'has already been taken'
    end

    it 'cannot look like an email' do
      user = User.new(
        email: 'u1@example.org',
        username: 'u1@example.org',
        password: 'passw0rd',
        password_confirmation: 'passw0rd',
      )

      expect(user).to be_invalid
      expect(user.errors[:username]).to include 'is invalid'
    end
  end
end
