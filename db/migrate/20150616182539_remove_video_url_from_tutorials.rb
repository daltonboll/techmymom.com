class RemoveVideoUrlFromTutorials < ActiveRecord::Migration
  def change
    remove_column :tutorials, :videoURL, :text
  end
end
