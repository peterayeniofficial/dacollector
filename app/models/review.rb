# frozen_string_literal: true

class Review < ApplicationRecord
  belongs_to :collection
  belongs_to :user
end
