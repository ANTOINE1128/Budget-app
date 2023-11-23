require 'rails_helper'

RSpec.feature 'Entities', type: :feature do
  before do
    user = User.create!(email: 'test@example.com', name: 'Marco', password: 'password',
                        password_confirmation: 'password')
    @group = Group.create!(name: 'Test Group', icon: 'icon1.png', user_id: user.id)

    expect(user.id).not_to be_nil
    expect(@group.id).not_to be_nil

    visit new_user_session_path
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Next'
  end
end
