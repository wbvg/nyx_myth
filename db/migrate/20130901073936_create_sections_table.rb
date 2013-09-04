class CreateSectionsTable < ActiveRecord::Migration
    def change
      create_table :sections do |t|
      t.text :pages
      t.timestamps
    end
  end
end