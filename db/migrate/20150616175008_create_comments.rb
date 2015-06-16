class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :name
      t.email :email
      t.text :text

      t.timestamps null: false
    end
  end
end
