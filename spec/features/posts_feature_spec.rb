require 'rails_helper'

feature 'posts' do
  scenario 'can be added' do
    sign_up
    add_post
    expect(page).to have_content 'post content'
  end

  scenario 'can be edited by owner' do
    sign_up
    add_post
    click_link 'Edit'
    fill_in 'Content', with: 'new content'
    click_button 'Update Post'
    expect(page).to have_content 'new content'
  end

  scenario 'can be deleted by owner', js: true do
    sign_up
    add_post
    click_link 'Delete'
    page.driver.browser.switch_to.alert.accept
    expect(current_path).to eq '/'
  end
end
