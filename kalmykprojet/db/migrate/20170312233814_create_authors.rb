class CreateAuthors < ActiveRecord::Migration[5.0]
  def change
    create_table :authors do |t|
    	t.string :name
    	t.string :bio
    	t.string :profile_pic
    	t.string :email
    	t.integer :uid
    	t.string :email
    	t.string :password_digest

      t.timestamps
    end
  end
end
