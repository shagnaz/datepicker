require 'test_helper'

class MsChannelsControllerTest < ActionController::TestCase
  setup do
    @ms_channel = ms_channels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ms_channels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ms_channel" do
    assert_difference('MsChannel.count') do
      post :create, ms_channel: { is_active: @ms_channel.is_active, name: @ms_channel.name }
    end

    assert_redirected_to ms_channel_path(assigns(:ms_channel))
  end

  test "should show ms_channel" do
    get :show, id: @ms_channel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ms_channel
    assert_response :success
  end

  test "should update ms_channel" do
    patch :update, id: @ms_channel, ms_channel: { is_active: @ms_channel.is_active, name: @ms_channel.name }
    assert_redirected_to ms_channel_path(assigns(:ms_channel))
  end

  test "should destroy ms_channel" do
    assert_difference('MsChannel.count', -1) do
      delete :destroy, id: @ms_channel
    end

    assert_redirected_to ms_channels_path
  end
end
