# frozen_string_literal: true

# Doc
class Message < ApplicationRecord
  belongs_to :user

  validates :body, presence: true
end
