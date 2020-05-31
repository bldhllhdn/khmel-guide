class User < ApplicationRecord
  validates :username, presence: true, uniqueness:true, length: { minimum: 4, maximum: 25}
  validates :password, presence: true, length: { minimum: 8, maximum: 30}
end
