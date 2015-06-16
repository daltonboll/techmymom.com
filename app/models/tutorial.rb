# == Schema Information
#
# Table name: tutorials
#
#  id          :integer          not null, primary key
#  title       :string
#  content     :text
#  published   :datetime
#  videoURL    :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#  category_id :integer
#

class Tutorial < ActiveRecord::Base
  
  belongs_to :user
  belongs_to :category
  has_one :video
  has_many :comments
  has_and_belongs_to_many :tags
  
end
