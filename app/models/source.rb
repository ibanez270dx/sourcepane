class Source < ApplicationRecord
  TYPES = %w[github twitter]

  belongs_to :user
  has_and_belongs_to_many :channels

  serialize :credentials, JSON
end
