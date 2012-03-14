class Micropost < ActiveRecord::Base

  validates :content , :length => { :maximum => 100 }

  validates :content , :length => { :minimum => 5 }

  belongs_to :user

  
end
