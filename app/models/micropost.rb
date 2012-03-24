# == Schema Information
#
# Table name: microposts
#
#  id         :integer         not null, primary key
#  content    :string(255)
#  user_id    :integer
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class Micropost < ActiveRecord::Base

  validates :content , :length => { :maximum => 100000000000000 }

  validates :content , :length => { :minimum => 5 }

  belongs_to :user

  
end
