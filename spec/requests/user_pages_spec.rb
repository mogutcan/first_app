require 'spec_helper'

describe "User pages" do

    subject { page }

      describe "signup page" do
        before { visit signup_path }
        
        it { should have_selector('h1',    text: 'Sign up') }
        it { should have_selector('title', text: baslik('Sign up') }
      end
end



describe "profile page" do

  let(:user) { FactoryGirl.create(:user) }
  # Code to make a user variable
  before { visit user_path(user) }

  it { should have_selector('h1',    text: user.name) }
  it { should have_selector('title', text: user.name) }
end

