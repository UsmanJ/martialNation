require 'rails_helper'

feature 'posts' do
  scenario 'a user can add a post' do
    visit '/'
    click_link 'New Post'
    expect(current_path).to eq('/posts/new')
  end
end
