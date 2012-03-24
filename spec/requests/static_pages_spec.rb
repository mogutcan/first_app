require 'spec_helper'

describe "Static pages" do

  subject { page }

  describe "Home page" do
    before { visit root_path }

    it "should have the h3 'Anasayfa'" do
    page.should have_selector('h3', :text => 'Anasayfa')
    end

    it "should have the title 'Anasayfa'" do
      page.should have_selector('title',
                               text => ' Mehmet Ogutcan | Anasayfa')
    end

  end

  describe "Help page" do

    before { visit help_path }

    it "should have the h3 'Yardim Sayfasi'" do
      
      page.should have_selector('h3', :text => 'Yardim Sayfasi')
    end

    it "should have the title 'Yardim'" do
      
      page.should have_selector('title',
                                :text => "Mehmet Ogutcan | Yardim")

  end
  end

  describe "About page" do
    before { visit about_path }
    it "should have the h3 'Hakkimizda'" do
      
      page.should have_selector('h3',
                               :text => 'Hakkimizda')
    end
    it "should have the title 'Hakkinda'" do
      
      page.should have_selector('title',
                                :text => "Mehmet Ogutcan | Hakkinda")
  end
  end

  describe "Contact page" do
    before { visit contact_path }
    it "should have the h1 'iletisim' " do
    
      page.should have_selector('h1', text: 'iletisim')
    end
    it "should have the title 'iletisim'" do
      
      page.should have_selector( 'title',
                                text: "Mehmet Ogutcan | iletisim")
    end
  end

end
