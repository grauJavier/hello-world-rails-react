# frozen_string_literal: true

class Message < ApplicationRecord
  validates :message, presence: true
end
