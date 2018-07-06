class ChatRoom < ApplicationRecord
  # belongs_to :user
  # don't think a chat room needs an owner. Revisit if errors

  has_many :messages, dependent: :destroy
end
