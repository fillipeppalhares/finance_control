class User < ApplicationRecord
  has_many :whitelists
  has_many :fund, through: :whitelists

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
