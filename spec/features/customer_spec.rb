require 'rails_helper'

describe 'Customers page navigation' do
  it 'shows a link to customer index' do
   visit '/'
   expect(page).to have_css 'a', text: 'Customers'
  end

  it 'navigates to customers page' do
   visit '/'
    click_on 'Customers'
    expect(current_path).to eq customers_path
    expect(page).to have_css 'h1', text: 'Customers'
  end
end
