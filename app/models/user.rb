class User < ActiveRecord::Base
  include Followable

  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true
  has_many :shouts
end
