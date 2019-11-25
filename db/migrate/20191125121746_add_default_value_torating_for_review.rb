class AddDefaultValueToratingForReview < ActiveRecord::Migration[6.0]
  def change
    change_column :reviews, :rating, :float, :default => 0
    #Ex:- :default =>''
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
