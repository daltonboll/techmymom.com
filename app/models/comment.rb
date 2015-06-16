# == Schema Information
#
# Table name: comments
#
#  id          :integer          not null, primary key
#  name        :string
#  email       :string
#  text        :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  tutorial_id :integer
#

class Comment < ActiveRecord::Base
  belongs_to :tutorial
end
