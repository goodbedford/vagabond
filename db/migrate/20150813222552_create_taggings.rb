class CreateTaggings < ActiveRecord::Migration
  def change
    create_table :taggings do |t|

      t.timestamps null: false
      t.belongs_to :post
      t.belongs_to :tag
    end
  end
end
