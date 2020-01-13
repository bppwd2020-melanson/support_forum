class CreateResponses < ActiveRecord::Migration[5.2]
  def change
    create_table :responses do |t|
      t.text :body
      t.integer :user_id
      t.integer :question_id

      t.timestamps
    end
  end
end
