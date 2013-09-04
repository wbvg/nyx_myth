class AddBookUrlToChaptersTable < ActiveRecord::Migration
   def change
    add_column :chapters, :book_url, :text
  end
end