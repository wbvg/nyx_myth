# t.datetime "timer"
#     t.string   "username"
#     t.string   "gender"
#     t.date     "birthday"
#     t.datetime "created_at",                                :null => false
#     t.datetime "updated_at",                                :null => false
#     t.string   "avatar_file_name"
#     t.string   "avatar_content_type"
#     t.integer  "avatar_file_size"
#     t.datetime "avatar_updated_at"

User.destroy_all

u1 = User.create(:timer => '2013-09-02 08:24:00', :username => 'Willy', :gender => 'Male', birthday: => '1982-12-21', :created_at => '2013-09-01 05:06:45', :updated_at => '2013-09-04 03:41:33', :avatar_file_name =>'685973.jpg',
    :avatar_content_type => 'image/jpeg', :avatar_file_size => '89759', :avatar_updated_at => '2013-09-02 01:20:25', :email => 'willy@mylittleshowpony.com', :is_admin => true, :time_zone => 'Sydney', :password => '12345', :password_confirmation => '12345')

u2 = User.create( :timer => '2013-09-02 08:24:00', :username => 'Missey', :gender => 'Male', birthday: => '1982-12-21', :created_at => '2013-09-01 05:06:45', :updated_at => '2013-09-04 03:41:33', :avatar_file_name =>'685973.jpg',
    :avatar_content_type => 'image/jpeg', :avatar_file_size => '89759', :avatar_updated_at => '2013-09-02 01:20:25', :email => 'willy@mylittleshowpony.com', :is_admin => false, :time_zone => 'Sydney', :password => '12345', :password_confirmation => '12345')




u1.save
u2.save


