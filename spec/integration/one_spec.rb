require 'rails_helper'

describe "Guest", :type => :feature do

  it "This doesn't work", driver: :chrome do
    visit('/')
    click_link 'two'
    expect(page).to have_content('this is page two')
  end

  it 'This works' do
    visit('/')
    click_link 'two'
    expect(page).to have_content('this is page two')
  end
end