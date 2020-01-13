class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :title
      t.text :body
      t.text :whyt
      t.integer :user_id
      t.integer :topic_id

      t.timestamps
    end
  end
end
