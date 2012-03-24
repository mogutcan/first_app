require 'spec_helper'

describe "Bolum3s" do

  describe "Home page" do
    it "should have the content 'Bolum'" do
      visit '/bolum3s/index'
      page.should have_content('Bolum')


    end
  end
end


