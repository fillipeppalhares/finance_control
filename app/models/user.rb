class User < ApplicationRecord
  has_many :whitelists
  has_many :chart_of_accounts, through: :whitelists

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
