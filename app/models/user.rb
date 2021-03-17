class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :tweets, class_name: "tweet", foreign_key: "reference_id"
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
