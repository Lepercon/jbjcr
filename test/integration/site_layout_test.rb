require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
	test "layout links" do
    get root_path
    assert_template 'static_pages/home'
    assert_select "a[href=?]", root_path, count: 2
    assert_select "a[href=?]", static_page_path(:contact_us)
    get static_page_path(:contact_us)
    assert_select "title", full_title("Contact us")
  end
end
