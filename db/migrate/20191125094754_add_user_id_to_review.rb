# frozen_string_literal: true

class AddUserIdToReview < ActiveRecord::Migration[6.0]
  def change
    add_column :reviews, :user_id, :integer
  end
end
