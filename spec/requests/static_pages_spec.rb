require 'rails_helper'
require 'support/utilities.rb'

describe "static pages" do
  
  subject { page }

  describe "home page" do
    before { visit root_path }
    it { is_expected.to have_content('Sample App') }
    it { is_expected.to have_title(full_title('')) }
    it { is_expected.not_to have_title('| home') }
  end

  describe "help page" do
    before { visit help_path }
    it { is_expected.to have_content('help') }
    it { is_expected.to have_title(full_title('Help')) }
  end

  describe "about page" do
    before { visit about_path } 
    it { is_expected.to have_content('About Us') }
    it { is_expected.to have_title(full_title('About Us')) }
  end

  describe "contact page" do
    before { visit contact_path }
    it { is_expected.to have_content('Contact') }
    it { is_expected.to have_title(full_title('Contact')) }
  end

end
