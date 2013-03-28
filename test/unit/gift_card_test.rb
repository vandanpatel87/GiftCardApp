require 'test_helper'

class GiftCardTest < ActiveSupport::TestCase
	test "invalid without a sender" do
		g = gift_cards(:preeti)
		g.sender = nil
		assert g.valid?
		assert_match /can't be blank/, g.errors[:sender].join, "Presence error not found on gift card."
	end

	test "valid with all attributes" do
		g = gift_cards(:vandan)
		assert g.valid?, "GiftCard was not valid"
	end
end
