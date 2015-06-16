# == Schema Information
#
# Table name: tutorials
#
#  id          :integer          not null, primary key
#  title       :string
#  content     :text
#  published   :datetime
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#  category_id :integer
#

require 'test_helper'

class TutorialTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
