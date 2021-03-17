class Tweet < ApplicationRecord
  belongs_to :user, class_name: "user", foreign_key: "user_id"
  validates :message, length: { maximum: 400 }
end
