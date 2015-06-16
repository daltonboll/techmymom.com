# == Schema Information
#
# Table name: tags
#
#  id         :integer          not null, primary key
#  text       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Tag < ActiveRecord::Base
  has_and_belongs_to_many :tutorials
end
