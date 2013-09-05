class Forum < ActiveRecord::Base
  attr_accessible :chapters_attritbutes, :sections_attributes

  # belongs_to :chapters
  has_many :chapters, :dependent => :destroy
  has_many :sections, :dependent => :destroy
  # accepts_nested_attributes_for :sections


  DISQUS_SHORTNAME = Rails.env == "development" ? "dev_shortname".freeze : "production_shortname".freeze

end
