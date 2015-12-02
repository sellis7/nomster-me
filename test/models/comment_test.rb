require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "comment has humanized rating?" do
    user = FactoryGirl.create(:user)
    place = FactoryGirl.create(:place, :user => user)
    comment = FactoryGirl.create(:comment, :user => user, :place => place)
    # For pulling out specific values from :comment as a hash (such as :rating)
    rating_src = FactoryGirl.attributes_for(:comment, :user => user, :place => place)

    RATINGS = {
  		'One Star' => '1_star',
  		'Two Stars' => '2_stars',
  		'Three Stars' => '3_stars'
  	}

    RATINGS.each do |key, value|
      if rating_src[:rating] == value
        return actual = key #Three Stars
      end
    end
    expect = comment.humanized_rating
    assert_equal expect, actual
  end

end
