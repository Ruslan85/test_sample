require 'spec_helper'

describe "Static pages" do

  subject { page }

  describe "Home page" do
    before { visit root_path }

    let(:heading)    { 'Sample App' }
    let(:page_title) { '' }

    it { should_not have_selector 'title', text: '| Home' }
  end

  describe "Help page" do
    before { visit help_path }

    let(:heading)    { 'Help' }
    let(:page_title) { 'Help' }
  end

  describe "About page" do
    before { visit about_path }

    let(:heading)    { 'About' }
    let(:page_title) { 'About Us' }
  end

  describe "Contact page" do
    before { visit contact_path }

    let(:heading)    { 'Contact' }
    let(:page_title) { 'Contact' }
  end

  it "should have the right links on the layout" do
    visit root_path
    click_link "About"
    page.should have_selector 'title', text: full_title('About Us')
    click_link "Help"
    page.should have_selector 'title', text: full_title('Help')
    click_link "Contact"
    page.should have_selector 'title', text: full_title('Contact')
    click_link "Home"
    click_link "Sign up now!"
    page.should have_selector 'title', text: full_title('Sign up')
    click_link "sample app"
    page.should have_selector 'title', text: full_title('')
  end










  describe "Paris page" do

    it "should have the h1 'Paris'" do
      visit '/static_pages/paris'
      page.should have_selector('h1', text: 'Paris')
    end

    it "should have the images" do
      visit '/static_pages/paris'
      page.should have_css('img', :src => "//upload.wikimedia.org/wikipedia/commons/thumb/a/ab/NotreDameI.jpg/750px-NotreDameI.jpg")
    end
  end

  describe "Tokyo page" do

    it "should have the h1 'Tokyo'" do
      visit '/static_pages/tokyo'
      page.should have_selector('h1', :text => 'Tokyo')
    end

    it "should have the images" do
      visit '/static_pages/tokyo'
      page.should have_selector('img', :src => "//upload.wikimedia.org/wikipedia/commons/thumb/4/49/Tokyo_station05s3872.jpg/800px-Tokyo_station05s3872.jpg")
    end
  end

  describe "New-York page" do

    it "should have the h1 'New-York'" do
      visit '/static_pages/new_york'
      page.should have_selector('h1', :text => 'New-York')
    end

    it "should have the images" do
      visit '/static_pages/new_york'
      page.should have_selector('img', :src => "//upload.wikimedia.org/wikipedia/commons/thumb/4/48/Unisphere-20100731.jpg/800px-Unisphere-20100731.jpg")
    end
  end
end