require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "signed in and can add comment?" do
    user = FactoryGirl.create(:user)
    sign_in user
    place = FactoryGirl.create(:place, :user => user)

    assert_difference 'Comment.count' do
      # Before checking that comment count changed
      # comment = FactoryGirl.create(:comment, :user => user, :place => place)
      post :create, :place_id => place.id, :comment =>{ :message => 'Best of the best', :rating => '2_stars'}
    end
    assert_redirected_to place_path(place)
    assert_equal 1, user.comments.count
  end

end
