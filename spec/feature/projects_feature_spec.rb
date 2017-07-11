require 'spec_helper'

feature 'Projects Feature' do

  before do
    visit('/projects')
  end

  scenario 'the route "/projects" exists' do
    expect(page.status_code).to be(200)
    expect(page).to have_current_path('/projects')
  end

  scenario 'The navbar is displaying on the page' do
    expect(page).to have_css('div#navbar', text: 'Home')
  end

  scenario 'The links in the navbar are working and can be clicked' do
    click_link('Home')
    expect(page.status_code).to be(200)
    expect(page).to have_current_path('/')
  end

  scenario 'The title for the page displays correctly' do
    expect(page).to have_css('h1', text: 'Projects')
  end

  scenario 'The welcome message for the page displays correctly' do
    expect(page).to have_css('div#welcome', text: 'Welcome to my projects page')
  end

  scenario 'The explanation section displays and has a title' do
    expect(page).to have_css('div#explanation')
    expect(page).to have_css('h2', text: 'Explanation')
  end

end
