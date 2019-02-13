class ChangeColumnInReview < ActiveRecord::Migration[5.2]
  def change
      change_column :reviews, :rating, :integer
      add_reference :restaurants, :reference, foreign_key: true
    end
end
