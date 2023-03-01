class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :project
  validates :content, presence: true
  validates :user_id, presence: true
  validates :project_id, presence: true
  audited
end
