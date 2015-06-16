class AddTutorialToComment < ActiveRecord::Migration
  def change
    add_reference :comments, :tutorial, index: true
    add_foreign_key :comments, :tutorials
  end
end
