class AddUsersTable < ActiveRecord::Migration
      def change
      create_table :users do |t|
      t.datetime :timer
      t.string :username
      t.string :gender
      t.date :birthday
      t.timestamps
    end
  end
end
