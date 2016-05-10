class Authorization < ApplicationRecord
  TYPES = %w[github twitter]

  belongs_to :user

  serialize :credentials, JSON
end
