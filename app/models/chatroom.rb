class Chatroom < ApplicationRecord
  has_many :messages

  belongs_to :user_one, class_name: "User"
  belongs_to :user_two, class_name: "User"
end
