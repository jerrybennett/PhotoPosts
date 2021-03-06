class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :caption
      t.references :user, foreign_key: true
      t.references :tag, foreign_key: true
      t.references :location, foreign_key: true

      t.timestamps
    end
  end
end
