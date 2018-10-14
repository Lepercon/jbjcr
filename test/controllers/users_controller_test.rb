require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
	test "should get new" do 
		get user_path(:new)
		assert_response :success		
	end
end
