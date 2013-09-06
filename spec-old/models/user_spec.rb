# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  timer                  :datetime
#  username               :string(255)
#  gender                 :string(255)
#  birthday               :date
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  avatar_file_name       :string(255)
#  avatar_content_type    :string(255)
#  avatar_file_size       :integer
#  avatar_updated_at      :datetime
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0)
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  is_admin               :boolean          default(FALSE)
#  time_zone              :string(255)
#

# require 'spec_helper'

# describe User do
#   pending "add some examples to (or delete) #{__FILE__}"
# end