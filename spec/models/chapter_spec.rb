require 'spec_helper'

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


 describe Chapter do

  before(:each) do
    @chapter_attr = {
      :user_id => "1",
      :title => "test title",
      :book_url => "http://your@website.com"
    }

      @chapter = Chapter.create(@chapter_attr)
    end

    describe "chapter belongs to user relationship test" do
     it { should belong_to :user }
    end

  describe "title" do

       it "should have a title attribute" do
        @chapter.category.should eq ("test title")
      end

      it "should reject over 40 character limit strings" do
        max_characters = "a" * 41
        hash = @chapter_attr.merge(:title => max_characters)
        Chapter.new(hash).should_not be_valid
      end

      it "should accept under 40 character limit strings" do
        max_characters = "a" * 18
        hash = @chapter_attr.merge(:title => max_characters)
        Chapter.new(hash).should be_valid
      end

   end

    describe "book_url" do

      it "should reject over 200 character limit strings" do
        max_characters = "a" * 201
        hash = @chapter_attr.merge(:status => max_characters)
        Chapter.new(hash).should_not be_valid
      end

      it "should accept under 200 character limit strings" do
        max_characters = "a" * 18
        hash = @chapter_attr.merge(:status => max_characters)
        Chapter.new(hash).should be_valid
      end

      it "should create a new instance given a valid attribute" do
      Chapter.create!(@chapter_attr)
      end
    end

  describe "user id" do
       it "should have a user id attribute" do
        @chapter.user_id.should eq (1)
       end
  end



end