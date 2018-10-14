require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup
  	@base_title = "Josephine Butler JCR"
  end

  test "should get home" do
    get static_page_url(:home)
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end

  test "should get contact us" do
    get static_page_url(:contact_us)
    assert_response :success
    assert_select "title", "Contact us | #{@base_title}"
  end
  
end
