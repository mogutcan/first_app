require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Anasayfa'" do
      visit '/static_pages/home'
      page.should have_content('Anasayfa')
    end
  end

  describe "Help page" do

    it "should have the content 'Yardim Sayfasi'" do
      visit '/static_pages/help'
      page.should have_content('Yardim Sayfasi')
    end
  end

  describe "About page" do
    it "should have the content 'Hakkimizda'" do
      visit '/static_pages/about'
      page.should have_content('Hakkimizda')
    end
  end

end
