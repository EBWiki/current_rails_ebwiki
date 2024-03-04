class CreateComments < ActiveRecord::Migration[7.1]
  def change
    create_table :comments do |t|
      t.text :content
      t.references :commentable, polymorphic: true, null: false
      t.integer :user_id
      t.index [:commentable_id, :commentable_type], name: :index_comments_on_commentable_id_and_commentable_type
    end
  end
end
