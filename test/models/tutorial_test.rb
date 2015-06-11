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

require 'test_helper'

class TutorialTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
