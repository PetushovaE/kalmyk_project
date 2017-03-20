class CreateArticleSubjects < ActiveRecord::Migration[5.0]
  def change
    create_table :article_subjects do |t|
    	t.belongs_to :article, index: true, foreign_key: true
      	t.belongs_to :subject, index: true, foreign_key: true

      	t.timestamps
    end
  end
end
