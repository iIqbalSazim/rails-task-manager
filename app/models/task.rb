class Task < ApplicationRecord
  has_many :subtasks, dependent: :destroy

  validates :title, presence: true, length: {maximum: 50}
  validates :body, presence: true, length: {maximum: 200}
end

