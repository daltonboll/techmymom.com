class CreateTutorials < ActiveRecord::Migration
  def change
    create_table :tutorials do |t|
      t.string :title
      t.text :content
      t.datetime :date
      t.text :videoURL

      t.timestamps null: false
    end
  end
end
