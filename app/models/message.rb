# frozen_string_literal: true

# Doc
class Message < ApplicationRecord
  belongs_to :user

  validates :body, presence: true

  scope :message_limit, -> {order(:created_at).last(20)}
end
