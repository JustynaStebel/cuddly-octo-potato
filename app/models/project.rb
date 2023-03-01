class Project < ApplicationRecord
  STATUSES = %w[draft active completed archived].freeze
  belongs_to :user
  audited only: :status
end
