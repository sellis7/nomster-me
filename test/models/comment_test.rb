require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "comment has humanized rating?" do
    user = FactoryGirl.create(:user)
    place = FactoryGirl.create(:place, :user => user)
    comment = FactoryGirl.attributes_for(:comment, :user => user, :place => place)

    RATINGS = {
  		'One Star' => '1_star',
  		'Two Stars' => '2_stars',
  		'Three Stars' => '3_stars'
  	}

    RATINGS.each do |key, value|
      if comment[:rating] == value
        actual = key #Three Stars
      end
    end
    expect = comment[:rating].rating.humanized_rating
    assert_equal expect, actual

  end

end
