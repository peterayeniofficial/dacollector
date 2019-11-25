# frozen_string_literal: true

class User < ApplicationRecord
  has_many :collections
  has_many :reviews, through: :collections

  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end
