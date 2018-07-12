require 'test_helper'

class GuestListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @guest_list = guest_lists(:one)
  end

  test "should get index" do
    get guest_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_guest_list_url
    assert_response :success
  end

  test "should create guest_list" do
    assert_difference('GuestList.count') do
      post guest_lists_url, params: { guest_list: { address: @guest_list.address, customer_id: @guest_list.customer_id, first_name: @guest_list.first_name, last_name: @guest_list.last_name, phone: @guest_list.phone, rsvp: @guest_list.rsvp } }
    end

    assert_redirected_to guest_list_url(GuestList.last)
  end

  test "should show guest_list" do
    get guest_list_url(@guest_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_guest_list_url(@guest_list)
    assert_response :success
  end

  test "should update guest_list" do
    patch guest_list_url(@guest_list), params: { guest_list: { address: @guest_list.address, customer_id: @guest_list.customer_id, first_name: @guest_list.first_name, last_name: @guest_list.last_name, phone: @guest_list.phone, rsvp: @guest_list.rsvp } }
    assert_redirected_to guest_list_url(@guest_list)
  end

  test "should destroy guest_list" do
    assert_difference('GuestList.count', -1) do
      delete guest_list_url(@guest_list)
    end

    assert_redirected_to guest_lists_url
  end
end
