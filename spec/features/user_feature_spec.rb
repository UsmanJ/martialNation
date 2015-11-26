require 'rails_helper'

feature 'user' do
  scenario 'can sign up' do
    sign_up
    expect(current_path).to eq('/')
  end

  scenario 'can sign in' do
    sign_in
    expect(current_path).to eq('/')
  end
end
