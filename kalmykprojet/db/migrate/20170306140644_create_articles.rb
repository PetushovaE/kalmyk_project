class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
    	t.string :title
    	t.text :body
    	t.integer :user_id
    	t.integer :subject_id

      t.timestamps
    end
  end
end
