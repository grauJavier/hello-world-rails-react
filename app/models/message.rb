class Message < ApplicationRecord
  validates :message, presence: true
end
