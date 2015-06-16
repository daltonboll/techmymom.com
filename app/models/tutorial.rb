# == Schema Information
#
# Table name: tutorials
#
#  id         :integer          not null, primary key
#  title      :string
#  content    :text
#  date       :datetime
#  videoURL   :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Tutorial < ActiveRecord::Base
  # TO ADD
  # -Category (has many tutorials)
  # -Tags (tutorial has many tags?? and/or tags have many tutorials)
  # -Comments (tutorial has many comments)
  # -Videos (videos belong to a tutorial)

  belongs_to :user
  
end
