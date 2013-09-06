# == Schema Information
#
# Table name: sections
#
#  id            :integer          not null, primary key
#  pages         :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  chapter_id    :integer
#  section_title :string(255)
#

class Section < ActiveRecord::Base
  attr_accessible :pages, :chapter_id , :section_title
  belongs_to :chapter

end
