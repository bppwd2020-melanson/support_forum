class CreateAuthTopics < ActiveRecord::Migration[5.2]
  def change
    create_table :auth_topics do |t|
      t.string :title

      t.timestamps
    end
  end
end
