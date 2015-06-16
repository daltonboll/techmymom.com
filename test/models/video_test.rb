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

require 'test_helper'

class VideoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
