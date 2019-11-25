# frozen_string_literal: true

class Collection < ApplicationRecord
  belongs_to :user
  has_many :reviews

  def total_reviews
    reviews.count
  end

  def average_rating
    total_rating = reviews.reduce(0){|total, review| total += review.rating}
    if total_reviews = 0 
      total_rating / 1 
    else 
      total_rating / total_reviews
    end
  end

  def full_name
    user.full_name
  end

  
end
