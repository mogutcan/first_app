require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the h3 'Anasayfa'" do
      visit '/static_pages/home'
      page.should have_selector('h3',:text => 'Anasayfa')
    end

    it "should have the title" do

      visit '/static_pages/home'
      page.should have_selector('title',
                                :text => "Mehmet Ogutcan | Anasayfa")

        end
  
    end


  describe "Help page" do

    it "should have the h3 'Yardim Sayfasi'" do
      visit '/static_pages/help'
      page.should have_selector('h3', :text => 'Yardim Sayfasi')
    end

    it "should have the title 'Yardim'" do
      visit '/static_pages/help'
      page.should have_selector('title',
                                :text => "Mehmet Ogutcan | Yardim")

  end
  end

  describe "About page" do
    it "should have the h3 'Hakkimizda'" do
      visit '/static_pages/about'
      page.should have_selector('h3',
                               :text => 'Hakkimizda')
    end
    it "should have the title 'Hakkinda'" do
      visit '/static_pages/about'
      page.should have_selector('title',
                                :text => "Mehmet Ogutcan | Hakkinda")
  end
  end

end
