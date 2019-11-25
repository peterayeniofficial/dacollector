class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.integer :collection_id

      t.timestamps
    end
  end
end
