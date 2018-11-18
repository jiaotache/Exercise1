require 'test_helper'

class UserinfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @userinfo = userinfos(:one)
  end

  test "should get index" do
    get userinfos_url
    assert_response :success
  end

  test "should get new" do
    get new_userinfo_url
    assert_response :success
  end

  test "should create userinfo" do
    assert_difference('Userinfo.count') do
      post userinfos_url, params: { userinfo: { birthday: @userinfo.birthday, introduction: @userinfo.introduction, password: @userinfo.password, username: @userinfo.username } }
    end

    assert_redirected_to userinfo_url(Userinfo.last)
  end

  test "should show userinfo" do
    get userinfo_url(@userinfo)
    assert_response :success
  end

  test "should get edit" do
    get edit_userinfo_url(@userinfo)
    assert_response :success
  end

  test "should update userinfo" do
    patch userinfo_url(@userinfo), params: { userinfo: { birthday: @userinfo.birthday, introduction: @userinfo.introduction, password: @userinfo.password, username: @userinfo.username } }
    assert_redirected_to userinfo_url(@userinfo)
  end

  test "should destroy userinfo" do
    assert_difference('Userinfo.count', -1) do
      delete userinfo_url(@userinfo)
    end

    assert_redirected_to userinfos_url
  end
end
