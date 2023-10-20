class DeletePublishAtFromTasks < ActiveRecord::Migration[7.1]
  def change
    remove_column :tasks, :publish_at, :datetime
  end
end
