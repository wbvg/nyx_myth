# == Schema Information
#
# Table name: chapters
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#  book_url   :text
#

class Chapter < ActiveRecord::Base

  attr_accessible :title, :user_id, :book_url, :sections_attributes
  has_many :sections, :dependent => :destroy
  accepts_nested_attributes_for :sections
  belongs_to :user

end
