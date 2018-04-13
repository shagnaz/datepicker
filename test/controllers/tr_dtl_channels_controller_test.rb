require 'test_helper'

class TrDtlChannelsControllerTest < ActionController::TestCase
  setup do
    @tr_dtl_channel = tr_dtl_channels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tr_dtl_channels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tr_dtl_channel" do
    assert_difference('TrDtlChannel.count') do
      post :create, tr_dtl_channel: { is_active: @tr_dtl_channel.is_active, ms_channel_id: @tr_dtl_channel.ms_channel_id, name_dropdown: @tr_dtl_channel.name_dropdown, tr_ppd_hdr_id: @tr_dtl_channel.tr_ppd_hdr_id }
    end

    assert_redirected_to tr_dtl_channel_path(assigns(:tr_dtl_channel))
  end

  test "should show tr_dtl_channel" do
    get :show, id: @tr_dtl_channel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tr_dtl_channel
    assert_response :success
  end

  test "should update tr_dtl_channel" do
    patch :update, id: @tr_dtl_channel, tr_dtl_channel: { is_active: @tr_dtl_channel.is_active, ms_channel_id: @tr_dtl_channel.ms_channel_id, name_dropdown: @tr_dtl_channel.name_dropdown, tr_ppd_hdr_id: @tr_dtl_channel.tr_ppd_hdr_id }
    assert_redirected_to tr_dtl_channel_path(assigns(:tr_dtl_channel))
  end

  test "should destroy tr_dtl_channel" do
    assert_difference('TrDtlChannel.count', -1) do
      delete :destroy, id: @tr_dtl_channel
    end

    assert_redirected_to tr_dtl_channels_path
  end
end
