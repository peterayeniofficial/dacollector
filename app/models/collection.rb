# frozen_string_literal: true

class Collection < ApplicationRecord
  belongs_to :user
  has_many :reviews

  def total_reviews
    reviews.count
  end

  def average_rating
    total_rating = reviews.reduce(0){|total, review| total += review.rating}
    total_rating / total_reviews
  end

  def full_name
    user.full_name
  end

  
end
