class AddSubjectToArticles < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :subject_id, :integer
  end
end
