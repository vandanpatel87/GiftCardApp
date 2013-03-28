require 'test_helper'

class GiftCardsControllerTest < ActionController::TestCase
  setup do
    @gift_card = gift_cards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gift_cards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gift_card" do
    assert_difference('GiftCard.count') do
      post :create, gift_card: { description: @gift_card.description, money: @gift_card.money, receiver: @gift_card.receiver, sender: @gift_card.sender }
    end

    assert_redirected_to gift_card_path(assigns(:gift_card))
  end

  test "should show gift_card" do
    get :show, id: @gift_card
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gift_card
    assert_response :success
  end

  test "should update gift_card" do
    put :update, id: @gift_card, gift_card: { description: @gift_card.description, money: @gift_card.money, receiver: @gift_card.receiver, sender: @gift_card.sender }
    assert_redirected_to gift_card_path(assigns(:gift_card))
  end

  test "should destroy gift_card" do
    assert_difference('GiftCard.count', -1) do
      delete :destroy, id: @gift_card
    end

    assert_redirected_to gift_cards_path
  end
end
