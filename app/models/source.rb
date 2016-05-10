class Source < ApplicationRecord
  TYPES = %w[github twitter]

  belongs_to :user

  serialize :credentials, JSON
end
