class Project < ApplicationRecord
  STATUSES = %w[draft active completed archived].freeze
  belongs_to :user
  has_many :comments, dependent: :destroy
  audited only: :status
end
