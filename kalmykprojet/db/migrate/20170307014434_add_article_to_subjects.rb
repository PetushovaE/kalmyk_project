class AddArticleToSubjects < ActiveRecord::Migration[5.0]
  def change
  	add_column :subjects, :article,  :string
  end
end
