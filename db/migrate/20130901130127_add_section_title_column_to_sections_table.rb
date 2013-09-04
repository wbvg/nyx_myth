class AddSectionTitleColumnToSectionsTable < ActiveRecord::Migration
  def change
    add_column :sections, :section_title, :string
  end
end