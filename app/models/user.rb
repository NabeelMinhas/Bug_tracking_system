class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable, :trackable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  USER_CATEGORIES = { manager: 0, developer: 1, qa: 2 }.freeze
  
  enum user_category: USER_CATEGORIES
end
