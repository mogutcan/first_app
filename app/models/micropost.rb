class Micropost < ActiveRecord::Base

  validates :content , :length => { :maximum => 9 }

  validates :content , :length => { :minimum => 4 }

  belongs_to :user

  
end
