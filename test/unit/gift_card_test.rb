require 'test_helper'

class GiftCardTest < ActiveSupport::TestCase
	test "invalid without a sender" do
		g = gift_cards(:vandan)
		g.sender = nil
		assert !g.valid?, "Entered Valid Data"
	end

	test "valid with all attributes" do
		g = gift_cards(:preeti)
		assert g.valid?, "GiftCard was not valid"
	end

	test "invalid number format" do
		g = gift_cards(:vandan)
		g.money = "xyz"
		assert !g.valid?, "Entered Valid Data"
	end

	test "valid number format" do
		g = gift_cards(:preeti)
		g.money = 9.99
		assert g.valid?, "Entered unaccepted number format"
	end
end
