class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  USER_CATEGORY = [
    ["manager", "Manager"],
    ["developer", "Developer"],
    ["qa", "QA"],
  ]

  enum user_category: {
    manager: 0,
    developer: 1,
    qa: 2
  }
end
