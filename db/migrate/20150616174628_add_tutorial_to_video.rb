class AddTutorialToVideo < ActiveRecord::Migration
  def change
    add_reference :videos, :tutorial, index: true
    add_foreign_key :videos, :tutorials
  end
end
