# == Schema Information
#
# Table name: videos
#
#  id          :integer          not null, primary key
#  url         :text
#  title       :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  tutorial_id :integer
#

class Video < ActiveRecord::Base
  belongs_to :tutorial
end
