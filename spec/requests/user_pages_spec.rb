require 'spec_helper'

describe "User pages" do

    subject { page }
    describe "signup page" do
      before { visit signup_path }
      it { should have_selector('h1',    text: 'Kayit ol') }
      it { should have_selector('title', text: baslik('Kayit ol')) }
    end

    describe "signup" do
      before { visit signup_path }
      
      describe "with invalid information" do
        it "should not create a user" do
          expect { click_button "Create my account" }.not_to change(User, :count)
        end
      end
      
      describe "with valid information" do
        before do
          fill_in "Name",         with: "Example User"
          fill_in "Email",                with: "user@example.com"
          fill_in "Password",               with: "foobar"
          fill_in "Confirmation",         with: "foobar"
        end
        describe "after saving the user" do
          it { should have_link('Sign out')
        end
      end
    end
end
