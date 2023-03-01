class Project < ApplicationRecord
  STATUSES = %w[active archived].freeze
  belongs_to :user
end
