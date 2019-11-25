class User < ApplicationRecord
  has_many :collections
  has_many :reviews, through: :collections
end
