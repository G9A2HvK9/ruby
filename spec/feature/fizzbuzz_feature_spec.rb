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
    expect(page).to have_css('input#fizzbuzz_lower_limit')
    expect(page).to have_css('input#fizzbuzz_upper_limit')
    expect(page).to have_css('input#fizzbuzz_lower_value')
    expect(page).to have_css('input#fizzbuzz_upper_value')
    expect(page).to have_button('Run FizzBuzz')
  end

  scenario 'There exists a results div' do
    expect(page).to have_css('div#results')
  end

  scenario 'When fizzbuzz is run correctly, the result displays in the results div' do
    fill_in('lower_limit', with: 0)
    fill_in('upper_limit', with: 15)
    fill_in('lower_value', with: 3)
    fill_in('upper_value', with: 5)
    click_button('Run FizzBuzz')
    expect('div#results').to have_content('0, 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz')
  end

end
