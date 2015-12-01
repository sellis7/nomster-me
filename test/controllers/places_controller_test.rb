require 'test_helper'

class PlacesControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "a place is shown?" do
    place = FactoryGirl.create(:place)
    get :show, :id => place.id
    assert_response :success
  end

  test "new place but not signed in?" do
    get :new
    #tried new_user_registration_path & failed with expectation to following path:
    assert_redirected_to new_user_session_path
  end

  test "new place but signed in?" do
    user = FactoryGirl.create(:user)
    sign_in user
    get :new
    assert_response(200) #redirect to proper page
  end



end
