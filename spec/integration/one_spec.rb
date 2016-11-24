require 'rails_helper'

describe "Guest", :type => :feature do

  # rspec spec/integration/one_spec.rb:6
  it "This doesn't work", driver: :chrome do
    visit('/')
    click_link 'two'
    expect(page).to have_content('this is page two')
  end

  # rspec spec/integration/one_spec.rb:13
  it 'This works' do
    visit('/')
    click_link 'two'
    expect(page).to have_content('this is page two')
  end

  # rspec spec/integration/one_spec.rb:20
  it 'This works', driver: :firefox do
    visit('/')
    click_link 'two'
    expect(page).to have_content('this is page two')
  end
end