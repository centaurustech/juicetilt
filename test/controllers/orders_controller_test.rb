require 'test_helper'

class OrdersControllerTest < ActionController::TestCase
  setup do
    @order = orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order" do
    assert_difference('Order.count') do
      post :create, order: { address_one: @order.address_one, address_two: @order.address_two, city: @order.city, country: @order.country, expiration: @order.expiration, id: @order.id, name: @order.name, number: @order.number, payment_option_id: @order.payment_option_id, phone: @order.phone, price: @order.price, shipping: @order.shipping, state: @order.state, status: @order.status, token: @order.token, tracking_number: @order.tracking_number, transaction_id: @order.transaction_id, uder_id: @order.uder_id, uuid: @order.uuid, zip: @order.zip }
    end

    assert_redirected_to order_path(assigns(:order))
  end

  test "should show order" do
    get :show, id: @order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @order
    assert_response :success
  end

  test "should update order" do
    patch :update, id: @order, order: { address_one: @order.address_one, address_two: @order.address_two, city: @order.city, country: @order.country, expiration: @order.expiration, id: @order.id, name: @order.name, number: @order.number, payment_option_id: @order.payment_option_id, phone: @order.phone, price: @order.price, shipping: @order.shipping, state: @order.state, status: @order.status, token: @order.token, tracking_number: @order.tracking_number, transaction_id: @order.transaction_id, uder_id: @order.uder_id, uuid: @order.uuid, zip: @order.zip }
    assert_redirected_to order_path(assigns(:order))
  end

  test "should destroy order" do
    assert_difference('Order.count', -1) do
      delete :destroy, id: @order
    end

    assert_redirected_to orders_path
  end
end
