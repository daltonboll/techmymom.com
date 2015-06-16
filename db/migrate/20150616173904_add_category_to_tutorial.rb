class AddCategoryToTutorial < ActiveRecord::Migration
  def change
    add_reference :tutorials, :category, index: true
    add_foreign_key :tutorials, :categories
  end
end
