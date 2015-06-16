class CreateJoinTableTagTutorial < ActiveRecord::Migration
  def change
    create_join_table :tags, :tutorials do |t|
      # t.index [:tag_id, :tutorial_id]
      # t.index [:tutorial_id, :tag_id]
    end
  end
end
