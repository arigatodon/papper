class CreateNotices < ActiveRecord::Migration
  def change
    create_table :notices do |t|
      t.string :title
      t.text :content
      t.float :lat
      t.float :lng
      t.references :user, index: true, foreign_key: true
      t.references :papperlike, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
