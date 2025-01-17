class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :name
      t.text :task
      t.text :comment
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
