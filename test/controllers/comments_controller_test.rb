require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "signed in and can add comment?" do
    user = FactoryGirl.create(:user)
    sign_in user
    place = FactoryGirl.create(:place, :user => user)
    comment = FactoryGirl.create(:comment, :user => user, :place => place)
    post :create, :place_id => place.id, :comment =>{ :message => 'Best of the best', :rating => '2_stars'}
    assert_redirected_to place_path(place)

  end

end
