require 'test_helper'

class ItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @item = items(:one)
  end

  test "should get index" do
    get items_url
    assert_response :success
  end

  test "should get new" do
    get new_item_url
    assert_response :success
  end

  test "should create item" do
    assert_difference('Item.count') do
      post items_url, params: { item: { fulfilment_free: @item.fulfilment_free, inventory: @item.inventory, nickname: @item.nickname, price: @item.price, sku: @item.sku, title: @item.title, unit_cost: @item.unit_cost } }
    end

    assert_redirected_to item_url(Item.last)
  end

  test "should show item" do
    get item_url(@item)
    assert_response :success
  end

  test "should get edit" do
    get edit_item_url(@item)
    assert_response :success
  end

  test "should update item" do
    patch item_url(@item), params: { item: { fulfilment_free: @item.fulfilment_free, inventory: @item.inventory, nickname: @item.nickname, price: @item.price, sku: @item.sku, title: @item.title, unit_cost: @item.unit_cost } }
    assert_redirected_to item_url(@item)
  end

  test "should destroy item" do
    assert_difference('Item.count', -1) do
      delete item_url(@item)
    end

    assert_redirected_to items_url
  end
end