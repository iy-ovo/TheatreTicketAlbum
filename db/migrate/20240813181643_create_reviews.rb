class CreateReviews < ActiveRecord::Migration[7.2]
  def change
    create_table :reviews do |t|
      t.string :title, null: false
      t.text :review_content, null: false
      
      t.timestamps
    end
  end
end
