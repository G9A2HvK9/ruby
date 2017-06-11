require 'spec_helper'

feature 'fizzbuzz Feature' do

  before do
    visit('/projects/fizzbuzz')
  end

  scenario 'the route "/projects/fizzbuzz" exists' do
    expect(page.status_code).to be(200)
    expect(page).to have_current_path('/projects/fizzbuzz')
  end

  scenario 'The navbar is displaying on the page' do
    expect(page).to have_css('div#navbar', text: 'HomeProjects')
  end

  scenario 'The "Projects" link in the navbar is working and can be clicked' do
    click_link('Home')
    expect(page.status_code).to be(200)
    expect(page).to have_current_path('/')
  end

  scenario 'The "Projects" link in the navbar is working and can be clicked' do
    click_link('Projects')
    expect(page.status_code).to be(200)
    expect(page).to have_current_path('/projects')
  end

  scenario 'The title for the page displays correctly' do
    expect(page).to have_css('h1', text: 'FizzBuzz')
  end

  scenario 'The welcome message for the page displays correctly' do
    expect(page).to have_css('div#welcome', text: 'Welcome to the FizzBuzz Route')
  end

  scenario 'The explanation section displays and has a title' do
    expect(page).to have_css('div#explanation')
    expect(page).to have_css('h2', text: 'Explanation')
  end

  scenario 'The functionality section displays correctly' do
    expect(page).to have_css('div#functionality', text: 'Test Range Test Values')
  end

end
