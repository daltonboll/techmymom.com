class ChangeDateColumnName < ActiveRecord::Migration
  def change
    rename_column :tutorials, :date, :published
  end
end
