class CreateTasks < ActiveRecord::Migration[7.1]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :body
      t.datetime :publish_at

      t.timestamps
    end
  end
end
