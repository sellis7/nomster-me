require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end

  # "Dashboard" - experimented with this before I saw it was specified as part of lesson
  test "user exists" do
    user = FactoryGirl.create(:user)
    sign_in user
    get :show, :id => user.id
    assert_response :success
  end

  test "user does not exist" do
    assert_raises(ActiveRecord::RecordNotFound) do
      get :show, :id => 'nil'
    end
  end

end
