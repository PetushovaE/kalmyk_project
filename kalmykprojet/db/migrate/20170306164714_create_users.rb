class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :name
      t.string :profile_pic
      t.string :city
    	t.string :email
    	t.integer :uid
    	t.string :email
    	t.string :password_digest

      t.timestamps
    end
  end
end
