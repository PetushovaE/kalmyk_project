class AddArticleToSubjects < ActiveRecord::Migration[5.0]
  def change
  	add_column :subjects, :article_id,  :integer
  end
end
