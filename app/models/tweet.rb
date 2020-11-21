class Tweet < ApplicationRecord
  belongs_to :user

  validates :tweet, presence: true
end
