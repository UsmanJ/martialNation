module SessionHelpers
  def sign_up
    visit '/users/sign_up'
    fill_in 'Email', with: 'test@test.com'
    fill_in 'Password', with: 'hello123'
    fill_in 'Password confirmation', with: 'hello123'
    click_button 'Sign up'
  end

  def sign_in
    visit '/users/sign_in'
    fill_in 'Email', with: 'test@test.com'
    fill_in 'Password', with: 'hello123'
    click_button 'Log in'
  end

  def add_post
    click_link 'New Post'
    fill_in 'Title', with: 'post title'
    fill_in 'Content', with: 'post content'
    click_button 'Create Post'
  end
end
