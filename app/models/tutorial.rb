# == Schema Information
#
# Table name: tutorials
#
#  id          :integer          not null, primary key
#  title       :string
#  content     :text
#  date        :datetime
#  videoURL    :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#  category_id :integer
#

class Tutorial < ActiveRecord::Base
  # TO ADD
  # -Tags (tutorial has many tags?? and/or tags have many tutorials)
  # -Comments (tutorial has many comments)

  belongs_to :user
  belongs_to :category
  has_one :video
  
end
