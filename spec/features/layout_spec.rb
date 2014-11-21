require 'rails_helper'

describe 'Application layout' do
  it 'shows the application name in an h1' do
    visit '/'
    expect(page).to have_css 'h1', text: 'Video Store'
  end
end
