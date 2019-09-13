class User < ApplicationRecord

  has_many :user_shares

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
