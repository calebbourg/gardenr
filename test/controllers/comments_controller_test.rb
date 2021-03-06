require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  test "create" do 
    user = FactoryGirl.create(:user)
    sign_in user
    place = FactoryGirl.create(:place)

    assert_difference 'Comment.count' do
      post :create, :place_id => place.id,  :comment => { 
          :message => 'what is this place?', 
          :rating => '1_star',
        }
      
    end # end # assert_difference ...

    assert_redirected_to place_path(place)
    assert_equal 1, user.comments.count
  end # end # the test "create" do
end 