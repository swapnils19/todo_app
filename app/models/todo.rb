class Todo < ApplicationRecord
  belongs_to :user
  belongs_to :project

  NEW = 'New'
  IN_PROGRESS = 'In Progress'
  COMPLETED = 'Completed'
  TODO_STATUSES = [NEW, IN_PROGRESS, COMPLETED]
end
