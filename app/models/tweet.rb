class Tweet < ApplicationRecord
  belongs_to :user

  validates :tweet, presence: true

  scope :ordered_by_most_recent, -> { includes(:user).order(created_at: :desc) }
end
